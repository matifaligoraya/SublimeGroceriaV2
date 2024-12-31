import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/cubit/groceryList/grocery_list_cubit.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/presentation/pages/grocerylist/grocery_list_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/religion_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/sgitem_screen.dart';
import 'package:sublime_groceria/presentation/widget/app_bar.dart';
import 'package:sublime_groceria/presentation/widget/bottom_navigation_bar.dart';
import 'package:sublime_groceria/presentation/widget/canvas.dart';
import 'package:sublime_groceria/presentation/widget/items.dart';
import 'package:sublime_groceria/presentation/widget/listitem.dart';
import 'package:sublime_groceria/presentation/widget/section_heading.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(
      appBarTitle: '',
    ),
    GroceryListScreen(),
    SgitemScreen(),
    ReligionScreen(),
  ];

  void _onTapnavbar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _ShowAddListPopUp(context);
        },
        foregroundColor: Colors.white,
        backgroundColor: ColorLight.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTapNavbar: _onTapnavbar,
      ),
    );
  }
}

void _ShowAddListPopUp(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final _listNameController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      Map<String, String?> fieldErrors = {};

      return StatefulBuilder(
        builder: (context, setState) {
          return Stack(
            children: [
              AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create New List",
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorLight.primary,
                      ),
                    ),
                    SizedBox(width: 55),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 22,
                        color: ColorLight.widgetstitle,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                ),
                content: BlocConsumer<GroroceryListPostCubit, SublimeState>(
                  listener: (context, state) {
                    if (state is SublimeError) {
                      if (state.message != null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.message!),
                          backgroundColor: Colors.red,
                        ));
                      }

                      setState(() {
                        fieldErrors = state.fieldErrors ?? {};
                      });
                    } else if (state is SublimeLoaded) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("List created successfully!"),
                        backgroundColor: Colors.green,
                      ));
                      Navigator.of(context).pop(); // Close the popup on success
                    }
                  },
                  builder: (context, state) {
                    if (state is SublimeError) {
                      fieldErrors = state.fieldErrors ?? {};
                    }

                    return Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: _listNameController,
                            decoration: InputDecoration(
                              labelText: 'List Name',
                              errorText: fieldErrors['ListName'],
                            ),
                            validator: (value) {
                              if (fieldErrors["ListName"] != null) {
                                var error = fieldErrors["ListName"];

                                return error;
                              }
                              if (value == null || value.isEmpty) {
                                return 'Please enter a list name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                final cubit =
                                    context.read<GroroceryListPostCubit>();
                                cubit.updateitems(_listNameController.text);
                              }
                            },
                            child: state is SublimeLoading
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        ColorLight.primary),
                                  )
                                : Text('Create'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                titlePadding: EdgeInsets.only(top: 10, left: 22, right: 22),
              ),
            ],
          );
        },
      );
    },
  );
}

class Home extends StatefulWidget {
  final String appBarTitle;
  const Home({super.key, required this.appBarTitle});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    GroceryListScreen(),
    SgitemScreen(),
    ReligionScreen(),
  ];

  void _onTapnavbar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  @override
  void initState() {
    super.initState();
    context.read<GroroceryListCubit>()..fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SublimeAppBar(
        title: widget.appBarTitle,
        isDrawerRequired: true,
        onPressed: _openDrawer,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Drawer Header",
                style: TextStyle(color: ColorLight.primary),
              ),
            ),
          ],
        ),
      ),
      body: _currentIndex == 0
          ? SublimeCanvas(
              children: [
                Text(
                  "Your Companion For Grocery List",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 60,
                ),
                SublimeSectionHeading(
                  headerText: 'Recent Lists',
                ),
                SizedBox(
                  height: 15,
                ),
                BlocBuilder<GroroceryListCubit,
                    SublimeState<List<GroceryList>>>(
                  builder: (context, state) {
                    if (state is SublimeLoading<List<GroceryList>>) {
                      return Center(
                          child: ListItem(
                        onChanged: (message) {},
                      ));
                    }

                    if (state is SublimeError<List<GroceryList>>) {
                      return Center(
                        child: Text(
                          state.message ?? 'An error occurred',
                          style: TextStyle(
                            color: AppColors.DarkSpringGreen,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }

                    if (state is SublimeLoaded<List<GroceryList>>) {
                      final cubit = context.read<GroroceryListCubit>();
                      final lists =
                          state.data['TotalCount'] as List<GroceryList>;
                      if (lists.isEmpty) {
                        return Text("Data is Not Available");
                      }
                      ;
                      return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          height: 75,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 228, 228, 228),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: ListView.builder(
                            // scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              final list = lists[index];
                              return ListItem(
                                list: list,
                                onChanged: (message) {},
                              );
                            },
                          ),
                        ),
                      );
                    }
                    return SizedBox();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                SublimeSectionHeading(
                  headerText: 'Suggested Items',
                ),
                SizedBox(
                  height: 15,
                ),
                // BlocBuilder<SgItemCubit, SublimeState<List<SgItem>>>(
                //   builder: (context, state) {
                //     if (state is SublimeLoading<List<SgItem>>) {
                //       return Center(
                //         child: CircularProgressIndicator(
                //           color: AppColors.DarkSpringGreen,
                //         ),
                //       );
                //     }
                //     if (state is SublimeError<List<SgItem>>) {
                //       return Text(
                //         state.message ?? 'an error occured',
                //         style: TextStyle(
                //             color: AppColors.DarkSpringGreen, fontSize: 16),
                //       );
                //     }
                //     if (state is SublimeLoaded<List<SgItem>>) {
                //       final items = state.data["data"] as List<SgItem>;
                //       return Container(
                //         child: GridView.builder(
                //           gridDelegate:
                //               SliverGridDelegateWithFixedCrossAxisCount(
                //                   crossAxisCount: 3,
                //                   crossAxisSpacing: 2.0,
                //                   mainAxisSpacing: 2.0),
                //           itemCount: 3,
                //           itemBuilder: (BuildContext context, int index) {
                //             final item = items[index];
                //             return SuggestedItems(
                //               title: '${item.itemName}',
                //               image: item.itemName ?? '',
                //             );
                //           },
                //         ),
                //       );
                //     }
                //     return SizedBox();
                //   },
                // )
              ],
            )
          : _pages[_currentIndex - 1],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _ShowAddListPopUp(context);
        },
        foregroundColor: Colors.white,
        backgroundColor: ColorLight.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTapNavbar: _onTapnavbar,
      ),
    );
  }
}

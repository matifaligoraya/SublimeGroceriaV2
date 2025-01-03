import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/Recipes_cubit.dart';
import 'package:sublime_groceria/cubit/groceryList/grocery_list_cubit.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/localization/applocalization.dart';
import 'package:sublime_groceria/models/Recipes/recipes.dart';
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
import 'package:sublime_groceria/presentation/widget/recipe.dart';
import 'package:sublime_groceria/presentation/widget/section_heading.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<GroroceryListCubit>()..fetchItems();
    context.read<SgItemCubit>()..fetchItems();
    context.read<RecipesCubit>()..fetchrecipes();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SublimeAppBar(
        title: widget.appBarTitle,
        isDrawerRequired: true,
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Theme.of(context).indicatorColor,
                                width: 1,
                              )),
                          child: InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Icon(
                              Icons.arrow_back_outlined,
                              size: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 165,
                    ),
                    child: Image.asset(
                      'assets/images/SublimeLogo.png',
                      width: 105,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).indicatorColor,
              ),
              title: Text(
                SublimeLocal.of(context).translate("Home"),
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                color: Theme.of(context).indicatorColor,
              ),
              title: Text(
                SublimeLocal.of(context).translate("View_List"),
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            ),
            InkWell(
              onTap: () async {
                const url = 'https://sublimegroceria.com/privacy-policy/';
              },
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Theme.of(context).indicatorColor,
                ),
                title: Text(
                  SublimeLocal.of(context).translate("Privacy_Policy"),
                  style: TextStyle(color: Theme.of(context).indicatorColor),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Theme.of(context).indicatorColor,
              ),
              title: Text(
                SublimeLocal.of(context).translate("Help"),
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.article,
                color: Theme.of(context).indicatorColor,
              ),
              title: Text(
                SublimeLocal.of(context).translate("Terms_and_use"),
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).indicatorColor,
              ),
              title: Text(
                SublimeLocal.of(context).translate("LogOut"),
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            )
          ],
        ),
      ),
      body: _currentIndex == 0
          ? SingleChildScrollView(
              child: SublimeCanvas(
                children: [
                  Text(
                    SublimeLocal.of(context).translate("home_page_headings"),
                    // "Your Companion For Grocery List",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => context.go(AppRoutes.GROCERY_ITEM_PATH),
                    child: SublimeSectionHeading(
                      headerText:
                          SublimeLocal.of(context).translate("Recent_Lists"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: BlocBuilder<GroroceryListCubit,
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
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () => context.go(AppRoutes.SGITEM_ROUTE_PATH),
                    child: SublimeSectionHeading(
                      headerText:
                          SublimeLocal.of(context).translate("Suggested_Items"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<SgItemCubit, SublimeState<List<SgItem>>>(
                    builder: (context, state) {
                      if (state is SublimeLoading<List<SgItem>>) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: AppColors.DarkSpringGreen,
                          ),
                        );
                      }
                      if (state is SublimeError<List<SgItem>>) {
                        return Text(
                          state.message ?? 'an error occured',
                          style: TextStyle(
                              color: AppColors.DarkSpringGreen, fontSize: 16),
                        );
                      }
                      if (state is SublimeLoaded<List<SgItem>>) {
                        print(state.data["data"]);
                        final items = state.data["data"] as List<SgItem>;
                        final String baseurl = ApiConfig.imageBaseAdress;
                        return Container(
                          height: 185,
                          child: Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 0.7,
                                mainAxisSpacing: 2,
                              ),
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return SuggestedItems(
                                  title: items[index].itemName ?? '',
                                  image: '${baseurl}${items[index].fileName}',
                                );
                              },
                            ),
                          ),
                        );
                      }
                      return SizedBox();
                    },
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  SublimeSectionHeading(
                    headerText: SublimeLocal.of(context)
                        .translate("Recipe_Integration"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<RecipesCubit, SublimeState<List<Recipes>>>(
                    builder: (context, state) {
                      if (state is SublimeLoading<List<Recipes>>) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: AppColors.DarkSpringGreen,
                          ),
                        );
                      }

                      if (state is SublimeError<List<Recipes>>) {
                        return Center(
                          child: Text(
                            state.message ?? 'An error occurred',
                            style: TextStyle(
                              color: AppColors.DarkSpringGreen,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }

                      if (state is SublimeLoaded<List<Recipes>>) {
                        final recipes = state.data["recipes"] as List<Recipes>;
                        final String baseurl = ApiConfig.imageBaseAdress;
                        if (recipes.isEmpty) {
                          return Center(
                            child: Text(
                              'No recipes available',
                              style: TextStyle(
                                color: AppColors.DarkSpringGreen,
                                fontSize: 16,
                              ),
                            ),
                          );
                        }

                        return Container(
                          height: 200,
                          child: ListView.builder(
                            itemCount: recipes.length.clamp(0, 2),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: RecipeIntegration(
                                  image: '${baseurl}${recipes[index].fileName}',
                                  title: recipes[index].title,
                                  tags: recipes[index].tags,
                                  likes: recipes[index].id.toString(),
                                  time: recipes[index].time,
                                ),
                              );
                            },
                          ),
                        );
                      }

                      return SizedBox();
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/groceryList/grocery_list_cubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/presentation/cubit/theme/theme_cubit.dart';
import 'package:sublime_groceria/presentation/pages/grocerylist/grocery_list_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/religion_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/sgitem_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    GroceryListScreen(),
    SgItemScreen(),
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
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        shape: const CircularNotchedRectangle(),
        color: const Color(0xffF4F4F4),
        height: 65,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home,
                    color: _currentIndex == 0
                        ? ColorLight.primary
                        : ColorLight.widgetstitle),
                onPressed: () => _onTapnavbar(0),
              ),
              IconButton(
                icon: Icon(Icons.list,
                    color: _currentIndex == 1
                        ? ColorLight.primary
                        : ColorLight.widgetstitle),
                onPressed: () => context.go(AppRoutes.GROCERY_ITEM_PATH),
              ),
              const SizedBox(width: 40), // Space for the notch
              IconButton(
                icon: Icon(Icons.book,
                    color: _currentIndex == 2
                        ? ColorLight.primary
                        : ColorLight.widgetstitle),
                onPressed: () => context.go(AppRoutes.SGITEM_ROUTE_PATH),
              ),
              IconButton(
                icon: Icon(Icons.account_circle,
                    color: _currentIndex == 3
                        ? ColorLight.primary
                        : ColorLight.widgetstitle),
                onPressed: () => context.go(AppRoutes.RELIGION_ROUTE_PATH),
              ),
            ],
          ),
        ),
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
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = context.read<ThemeCubit>();
    ThemeMode currentTheme = context.watch<ThemeCubit>().state;
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.RELIGION_ROUTE_PATH);
              },
              child: const Text('Go to Religion Screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.GROCERY_ITEM_PATH);
              },
              child: const Text('Go to Grocery List Screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.SGITEM_ROUTE_PATH);
              },
              child: const Text('Go to Grocery items Screen'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Light'),
              Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: currentTheme,
                onChanged: (value) {
                  themeCubit.changeTheme();
                },
              ),
              const Text('Dark'),
              Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: currentTheme,
                onChanged: (value) {
                  themeCubit.changeTheme();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

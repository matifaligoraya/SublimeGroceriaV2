import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/presentation/Models/list_model.dart';
import 'package:sublime_groceria/presentation/pages/auth/login_screen.dart';

final List<ShoppingListItem> item = [
  ShoppingListItem(
    title: "Wedding Shoppig",
    tag: "3 Weeks ago",
    purchasedItems: 51,
    totalItems: 10,
    pendingItems: 4,
    sharedWith: 6,
  ),
];

String dropdownvalue = 'Item 1';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // Scaffold(
      //   backgroundColor: Colors.white,
      //   appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     automaticallyImplyLeading: false,
      //     flexibleSpace: Padding(
      //       padding: const EdgeInsets.only(top: 45),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 15),
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 color: const Color(0xff1B7C3F),
      //                 borderRadius: BorderRadius.circular(8.0),
      //               ),
      //               child: InkWell(
      //                 onTap: () {
      //                   // Navigator.pushNamed(context, '/drawer');
      //                 },
      //                 child: const SizedBox(
      //                   width: 35,
      //                   height: 35,
      //                   child: Icon(
      //                     Icons.menu,
      //                     color: Colors.white,
      //                     size: 18,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 15),
      //             child: InkWell(
      //               onTap: () {
      //                 showPopup(context);
      //               },
      //               child: const Icon(
      //                 Icons.help_outline,
      //                 color: Color(0xff1D1B1B),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     foregroundColor: Colors.white,
      //     backgroundColor: const Color(0xff1B7C3F),
      //     elevation: 0,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(30),
      //     ),
      //     child: const Icon(
      //       Icons.add,
      //       color: Colors.white,
      //     ),
      //   ),
      //   bottomNavigationBar: const BottomAppBar(
      //     notchMargin: 5,
      //     shape: CircularNotchedRectangle(),
      //     color: Color(0xffF4F4F4),
      //     height: 65,
      //     child: Padding(
      //       padding: EdgeInsets.only(right: 60),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           BottomNavItem(
      //             icon: Icons.home,
      //             label: 'Home',
      //             isActive: true,
      //           ),
      //           BottomNavItem(icon: Icons.list, label: 'List'),
      //           BottomNavItem(icon: Icons.book, label: 'Recipe'),
      //           BottomNavItem(icon: Icons.account_circle, label: 'Account'),
      //         ],
      //       ),
      //     ),
      //   ),
      //   body: BlocConsumer<ReligionBloc, ReligionState>(
      //     bloc: religionBloc,
      //     listenWhen: (previous, current) => current is Religionactionstate,
      //     buildWhen: (previous, current) => current is! Religionactionstate,
      //     listener: (context, state) {},
      //     builder: (context, state) {
      //       switch (state.runtimeType) {
      //         case Religionfetching:
      //           final successState = state as Religionfetching;

      //           return SingleChildScrollView(
      //             child: Padding(
      //               padding: const EdgeInsets.only(bottom: 10),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(
      //                         left: 15, top: 20, bottom: 30),
      //                     child: Text(
      //                       // SublimeLocal.of(context).translate('Your Companion For Grocery List'),
      //                       "Your Companion For \nGrocery List",
      //                       style: TextStyle(
      //                         fontSize: 24,
      //                         color: ColorLight.widgetstitle,
      //                         fontWeight: FontWeight.bold,
      //                         height: 1.3,
      //                       ),
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.symmetric(horizontal: 15),
      //                     child: SectionHeader(
      //                       title: successState.religions.isNotEmpty
      //                           ? successState.religions[1].name
      //                           : 'religions available',
      //                       actionText: "View All",
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(15),
      //                     child: ListItem(
      //                       title: item[0].title,
      //                       tag: item[0].tag,
      //                       purchaseditems:
      //                           '${item[0].totalItems} out of ${item[0].purchasedItems} Items Purchased',
      //                       pendingItems: '${item[0].pendingItems} Pending',
      //                       sharedWith:
      //                           'Shared With ${item[0].sharedWith} Persons',
      //                     ),
      //                   ),
      //                   const Padding(
      //                     padding: EdgeInsets.symmetric(horizontal: 15),
      //                     child: SectionHeader(
      //                       title: "Suggested Items",
      //                       actionText: "View All",
      //                     ),
      //                   ),
      //                   Row(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 12, left: 15),
      //                         child: SuggestedItems(
      //                           title: 'Himalayan Pink \nSalt',
      //                           image: "assets/images/items1.png",
      //                         ),
      //                       ),
      //                       SizedBox(width: 4),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 12),
      //                         child: SuggestedItems(
      //                           title: 'Fresh Parsley \nveg',
      //                           image: "assets/images/items2.png",
      //                         ),
      //                       ),
      //                       SizedBox(width: 4),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 12),
      //                         child: SuggestedItems(
      //                           title: 'Whole Red Chilli',
      //                           image: "assets/images/items3.png",
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   const Padding(
      //                     padding:
      //                         EdgeInsets.only(left: 15, top: 20, right: 15),
      //                     child: SectionHeader(
      //                       title: "Recipe Integration",
      //                       actionText: "View All",
      //                     ),
      //                   ),
      //                   SizedBox(height: 20),
      //                   Recipeintegration(
      //                     image: "assets/images/recipe3.png",
      //                     title: "Crispy crispy Pasta Crispy \ncrispy Pasta",
      //                     proteins: "Proteins",
      //                     fats: "Fats",
      //                     carbohydrates: "Carbohydrates",
      //                     likes: "125k",
      //                     time: "25 Min",
      //                   ),
      //                   SizedBox(height: 5),
      //                   Recipeintegration(
      //                     image: "assets/images/recipe2.png",
      //                     title: "Zinger Cheesy \nBurger",
      //                     proteins: "Proteins",
      //                     fats: "Fats",
      //                     carbohydrates: "Carbohydrates",
      //                     likes: "250k",
      //                     time: "40 Min",
      //                   ),
      //                   Recipeintegration(
      //                     image: "assets/images/recipe2.png",
      //                     title: "Zinger Cheesy \nBurger",
      //                     proteins: "Proteins",
      //                     fats: "Fats",
      //                     carbohydrates: "Carbohydrates",
      //                     likes: "250k",
      //                     time: "40 Min",
      //                   ),
      //                   ListView.builder(
      //                     physics: NeverScrollableScrollPhysics(),
      //                     shrinkWrap: true,
      //                     itemCount: state.religions.length,
      //                     itemBuilder: (BuildContext context, int index) {
      //                       var religion = state.religions[index];

      //                       return Text(religion.name);
      //                     },
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           );
      //         default:
      //           return const CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),

      // ),
    );
  }
}

void showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Title",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorLight.primary,
          ),
        ),
        content: Text('This is the content of the popup.'),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the popup
            },
          ),
        ],
      );
    },
  );
}

class _RecipeImage extends StatelessWidget {
  final String imagePath;

  const _RecipeImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 76,
      decoration: const BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Image.asset(imagePath),
    );
  }
}

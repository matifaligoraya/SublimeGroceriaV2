import 'package:flutter/material.dart';
import 'package:sublime_groceria/src/presentation/widget/bottomappbar.dart';
import 'package:sublime_groceria/src/presentation/widget/listitem.dart';
// import 'package:sublime_groceria/src/presentation/widget/sectionheader.dart';
// import 'package:sublime_groceria/src/presentation/widget/items.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sublime_groceria/src/localization/applocalization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Material(
                    color: const Color(0xff1B7C3F),
                    borderRadius: BorderRadius.circular(8.0),
                    child: const SizedBox(
                      width: 35,
                      height: 35,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.help_outline,
                    color: Color(0xff1D1B1B),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff1B7C3F),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          notchMargin: 5,
          shape: CircularNotchedRectangle(),
          color: Color(0xffF4F4F4),
          height: 65,
          child: Padding(
            padding: EdgeInsets.only(right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                BottomNavItem(icon: Icons.home, label: 'Home', isActive: true),
                BottomNavItem(icon: Icons.list, label: 'List'),
                BottomNavItem(icon: Icons.book, label: 'Recipe'),
                BottomNavItem(icon: Icons.account_circle, label: 'Account'),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(AppLocalizations.of(context)!.homePageHeading);
            Text(
              SublimeLocal.of(context).translate('home_page_heading'),
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff373B3D),
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recents Lists",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff1B7C3F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff2E98D7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff2E98D7),
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: ListItem(
                title: 'Wedding Shopping',
                tag: '3 weeks ago',
                purchaseditems: '4 Out of 51 Items Purchased',
                pendingItems: '4 Pending',
                sharedWith: 'Shared With 6 Persons',
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: SectionHeader(
            //     title: "Suggested Items",
            //     actionText: "View All",
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 12, left: 15),
            //   child: SuggestedItems(
            //     title: 'Himalayan Pink \nSalt',
            //     image: "assets/images/item.png",
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            //   child: SectionHeader(
            //     title: "Recipe Integration",
            //     actionText: "View All",
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            //   child: _RecipeImage(imagePath: "Assets/Images/recipe1.png"),
            // ),
          ],
        ),
      ),
    );
  }
}

// // class SuggestedItem extends StatelessWidget {
//   final String title;
//   final Color color;

//   const SuggestedItem({super.key, required this.title, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 110,
//       height: 148,
//       decoration: BoxDecoration(
//         color: const Color(0xffF4F4F4),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               color: color,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(5),
//                 topRight: Radius.circular(5),
//               ),
//             ),
//             child: Center(
//               child: Icon(Icons.fastfood, size: 50, color: Colors.white),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 12, color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }
// }

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

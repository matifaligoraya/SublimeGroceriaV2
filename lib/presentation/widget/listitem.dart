import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/localization/applocalization.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/utilities/extensions/string_extension.dart';

class ListItem extends StatelessWidget {
  final GroceryList? list;
  final ValueChanged<String> onChanged;

  const ListItem({
    super.key,
    this.list,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    if (list != null) {
      return Container(
        width: mediaQueryData.size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 228, 228, 228),
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            list!.listName ?? "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6), // Space between title and tag
                        Container(
                          width: 70,
                          height: 16,
                          decoration: BoxDecoration(
                            color: ColorLight.secondary,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(3),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: ColorLight.primary,
                                size: 10,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                list!.updatedDate
                                        ?.formatRelativeTime()
                                        .toString() ??
                                    "12",
                                style: const TextStyle(
                                  fontSize: 6,
                                  color: ColorLight.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Theme.of(context).indicatorColor,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    _buildDot(ColorLight.homecard),
                    const SizedBox(width: 4),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Theme.of(context).indicatorColor,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.fontSize),
                            children: [
                          TextSpan(
                            text: SublimeLocal.of(context).translate("Out_of"),
                          ),
                          TextSpan(
                            text: list!.pendingItemsCount?.toString() ?? "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: SublimeLocal.of(context)
                                  .translate("Item_Purchased")),
                        ])),
                    const SizedBox(width: 10),
                    _buildDot(ColorLight.carbohydrates),
                    const SizedBox(width: 4),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Theme.of(context).indicatorColor,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.fontSize),
                            children: [
                          TextSpan(
                            text: list!.pendingItemsCount?.toString() ?? "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: SublimeLocal.of(context)
                                  .translate("Pending")),
                        ])),
                    const SizedBox(width: 10),
                    _buildDot(ColorLight.primary),
                    const SizedBox(width: 4),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Theme.of(context).indicatorColor,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.fontSize),
                            children: [
                          TextSpan(
                            text: SublimeLocal.of(context)
                                .translate("shared_with"),
                          ),
                          TextSpan(
                            text: list!.sharedUserCount?.toString() ?? "0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: SublimeLocal.of(context)
                                  .translate("Persons")),
                        ])),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: mediaQueryData.size.width,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            child: ListTile(
              tileColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Simulating a placeholder title line
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 100,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 7,
                        width: 30,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 5,
                        width: 50,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 5,
                        width: 50,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.grey[300],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 5,
                        width: 42,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Instagram-like progress indicator
                  LinearProgressIndicator(
                    value: null,
                    color: AppColors.DarkSpringGreen,
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            )),
      );
    }
  }

  Widget _buildDot(Color color) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: color,
      ),
    );
  }

//   Widget _buildText(String text) {
//     return Text(
//       text,
//       style: const TextStyle(
//         color: ColorLight.widgetstitle,
//         fontSize: 8,
//       ),
//     );
//   }
}

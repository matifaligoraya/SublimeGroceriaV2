import 'package:flutter/material.dart';
import 'package:sublime_groceria/src/common/colors.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String tag;
  final String purchaseditems;
  final String pendingItems;
  final String sharedWith;

  const ListItem({
    super.key,
    required this.title,
    required this.tag,
    required this.purchaseditems,
    required this.pendingItems,
    required this.sharedWith,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
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
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Container(
                  width: 62,
                  height: 14,
                  decoration: BoxDecoration(
                    color: ColorLight.secondary,
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,
                          color: ColorLight.primary, size: 10),
                      SizedBox(
                        width: 2,
                      ),
                      Text(tag,
                          style: const TextStyle(
                              fontSize: 6, color: ColorLight.primary)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 118,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: ColorLight.homecard,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    purchaseditems,
                    style: TextStyle(
                      color: ColorLight.widgetstitle,
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: ColorLight.carbohydrates,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    pendingItems,
                    style: TextStyle(
                      color: ColorLight.widgetstitle,
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: ColorLight.primary,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    sharedWith,
                    style: TextStyle(
                      color: ColorLight.widgetstitle,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

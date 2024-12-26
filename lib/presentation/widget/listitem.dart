import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String tag;
  final String purchaseditems;
  final String pendingItems;
  final String sharedWith;
  final ValueChanged<String> onChanged; // Callback function

  const ListItem({
    super.key,
    required this.title,
    required this.tag,
    required this.purchaseditems,
    required this.pendingItems,
    required this.sharedWith,
    required this.onChanged, // Required parameter for callback
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          title,
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
                              tag,
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
                const Icon(
                  Icons.more_vert,
                  color: Colors.black,
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
                              color: ColorLight.widgetstitle, fontSize: 8),
                          children: [
                        TextSpan(
                          text: 'Out of ',
                        ),
                        TextSpan(
                          text: purchaseditems,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' Item Purchased'),
                      ])),
                  const SizedBox(width: 10),
                  _buildDot(ColorLight.carbohydrates),
                  const SizedBox(width: 4),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: ColorLight.widgetstitle, fontSize: 8),
                          children: [
                        TextSpan(
                          text: pendingItems,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' Pending'),
                      ])),
                  const SizedBox(width: 10),
                  _buildDot(ColorLight.primary),
                  const SizedBox(width: 4),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: ColorLight.widgetstitle, fontSize: 8),
                          children: [
                        TextSpan(
                          text: 'Shared With ',
                        ),
                        TextSpan(
                          text: sharedWith,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' Persons'),
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

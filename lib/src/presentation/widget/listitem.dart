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
                  color: ColorLight.tag,
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
                width: 115,
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
          const SizedBox(height: 10),
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
                color: ColorLight.primary,
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                purchaseditems,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

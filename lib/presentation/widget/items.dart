import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';

class SuggestedItems extends StatelessWidget {
  final String title;
  final String image;

  const SuggestedItems({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 110,
              height: 148,
              decoration: BoxDecoration(
                color: ColorLight.widgetsbg,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: Container(
                      width: 110,
                      height: 95,
                      decoration: BoxDecoration(
                        color: ColorLight.homecard,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                ),
                                child: Image.asset(
                                  image,
                                  width: 75,
                                  height: 75,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 70,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: ColorLight.primary,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.3,
                            color: ColorLight.widgetstitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

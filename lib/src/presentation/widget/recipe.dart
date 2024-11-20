import 'package:flutter/material.dart';
import 'package:sublime_groceria/src/common/colors.dart';

class Recipeintegration extends StatelessWidget {
  final String image;
  final String title;
  final String proteins;
  final String fats;
  final String carbohydrates;
  final String likes;
  final String time;

  const Recipeintegration({
    super.key,
    required this.image,
    required this.title,
    required this.proteins,
    required this.fats,
    required this.carbohydrates,
    required this.likes,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Row(
        children: [
          Container(
            width: 330,
            height: 76,
            decoration: BoxDecoration(
              color: ColorLight.widgetsbg,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Container(
                  width: 102,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image.asset(
                    image,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 2,
                          ),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 10,
                              color: ColorLight.widgetstitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorLight.proteins,
                                width: 0.5,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                color: ColorLight.proteins,
                                size: 5,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                proteins,
                                style: TextStyle(
                                    color: ColorLight.proteins,
                                    fontSize: 4,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        //           SizedBox(
                        //             width: 5,
                        //           ),
                        //           Container(
                        //             width: 40,
                        //             height: 10,
                        //             decoration: BoxDecoration(
                        //                 border: Border.all(
                        //               color: ColorLight.fats,
                        //               width: 2.0,
                        //             )),
                        //             child: Column(
                        //               children: [
                        //                 Icon(
                        //                   Icons.check,
                        //                   color: ColorLight.proteins,
                        //                   size: 5,
                        //                 ),
                        //                 Text(
                        //                   fats,
                        //                   style: TextStyle(
                        //                     color: ColorLight.fats,
                        //                     fontSize: 6,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //           SizedBox(
                        //             width: 5,
                        //           ),
                        //           Container(
                        //             width: 40,
                        //             height: 10,
                        //             decoration: BoxDecoration(
                        //                 border: Border.all(
                        //               color: ColorLight.carbohydrates,
                        //               width: 2.0,
                        //             )),
                        //             child: Column(
                        //               children: [
                        //                 Icon(
                        //                   Icons.check,
                        //                   color: ColorLight.carbohydrates,
                        //                   size: 5,
                        //                 ),
                        //                 Text(
                        //                   proteins,
                        //                   style: TextStyle(
                        //                     color: ColorLight.carbohydrates,
                        //                     fontSize: 6,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //       SizedBox(
                        //         width: 15,
                        //       ),
                        //       Column(
                        //         children: [
                        //           Row(
                        //             children: [
                        //               Image.asset(
                        //                 "assets/images/heart.png",
                        //                 width: 10,
                        //                 height: 10,
                        //               ),
                        //               SizedBox(
                        //                 width: 4,
                        //               ),
                        //               Text(
                        //                 likes,
                        //                 style: TextStyle(
                        //                   fontSize: 8,
                        //                   color: ColorLight.widgetstitle,
                        //                   fontWeight: FontWeight.normal,
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //           SizedBox(
                        //             height: 10,
                        //           ),
                        //           Row(
                        //             children: [
                        //               Icon(
                        //                 Icons.lock_clock,
                        //                 size: 10,
                        //                 color: ColorLight.widgetstitle,
                        //               ),
                        //               SizedBox(
                        //                 width: 4,
                        //               ),
                        //               Text(
                        //                 time,
                        //                 style: TextStyle(
                        //                   fontSize: 10,
                        //                   color: ColorLight.widgetstitle,
                        //                 ),
                        //               )
                        //             ],
                        //           )
                        SizedBox(
                          width: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 26,
                              height: 10,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorLight.fats,
                                    width: 0.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: ColorLight.fats,
                                    size: 5,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    fats,
                                    style: TextStyle(
                                        color: ColorLight.fats,
                                        fontSize: 4,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 55,
                              height: 10,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorLight.carbohydrates,
                                    width: 0.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: ColorLight.carbohydrates,
                                    size: 5,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    carbohydrates,
                                    style: TextStyle(
                                        color: ColorLight.carbohydrates,
                                        fontSize: 4,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_rounded,
                          size: 12,
                          color: ColorLight.primary,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          likes,
                          style: TextStyle(
                            fontSize: 8,
                            color: ColorLight.widgetstitle,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: ColorLight.widgetstitle,
                            size: 10,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 8,
                              color: ColorLight.widgetstitle,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

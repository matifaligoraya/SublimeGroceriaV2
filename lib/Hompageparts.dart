// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            foregroundColor: const Color(0xffFFFFFF),
            backgroundColor: const Color(0xff1B7C3F),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xffFFFFFF),
            ),
          ),
          bottomNavigationBar: const BottomAppBar(
              notchMargin: 5,
              shape: CircularNotchedRectangle(),
              color: Color(0xffF4F4F4),
              height: 65,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 60,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xff1B7C3F),
                          size: 25,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Color(0xff1B7C3F),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.list,
                          color: Color(0xff0F172A),
                          size: 25,
                        ),
                        Text(
                          "List",
                          style: TextStyle(
                            color: Color(0xff0F172A),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.book,
                          color: Color(0xff0F172A),
                          size: 25,
                        ),
                        Text(
                          "Recipe",
                          style: TextStyle(
                            color: Color(0xff0F172A),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Color(0xff0F172A),
                          size: 25,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                            color: Color(0xff0F172A),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
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
                      Icons.help,
                      color: Color(0xff1D1B1B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 85, top: 20),
                child: Text(
                  "Your Companion For \nGrocery List",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff373B3D),
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Recents Lists",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1B7C3F),
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff2E98D7),
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff2E98D7),
                      size: 10,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          height: 92,
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
                            padding: const EdgeInsets.only(
                              bottom: 10,
                              top: 10,
                            ),
                            child: Column(
                              // Change from Row to Column to add multiple Rows
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Wedding Shopping",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 4),
                                              child: Container(
                                                height: 18,
                                                width: 70,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xffD4EDDA),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(3)),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                      vertical: 1),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.access_time,
                                                        color:
                                                            Color(0xff1B7C3F),
                                                        size: 10,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Text(
                                                        "3 weeks ago",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff1B7C3F),
                                                          fontSize: 6,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 48),
                                        const Column(
                                          children: [
                                            Icon(
                                              Icons.more_vert,
                                              color: Color(0xff282828),
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Second Row - New Row
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 15,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffFFC107),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3)),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text(
                                            "4 Out of 51 Items Purchased",
                                            style: TextStyle(fontSize: 6)),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffC32626),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3)),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text("4 Pending",
                                            style: TextStyle(fontSize: 6)),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff1B7C3F),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3)),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text("Shared With 6 Persons",
                                            style: TextStyle(fontSize: 6)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Suggested Items",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1B7C3F),
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff2E98D7),
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff2E98D7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 148,
                              decoration: const BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Container(
                                      width: 110,
                                      height: 95,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffFFC107),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(100),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 18,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                                left: 5,
                                              ),
                                              child: Image.asset(
                                                "Assets/Images/1st.png",
                                                width: 60,
                                                height: 60,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 65,
                                              right: 5,
                                            ),
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff1B7C3F),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 10), // Optional padding
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 5,
                                      ),
                                      child: Text(
                                        "Himalayan Pink \nSalt",
                                        style: TextStyle(
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 148,
                              decoration: const BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Container(
                                      width: 110,
                                      height: 95,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffFFC107),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(100),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 18,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                // right: 10,
                                                // left: 5,
                                                right: 5,
                                              ),
                                              child: Image.asset(
                                                "Assets/Images/2nd.png",
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 65,
                                              right: 5,
                                            ),
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff1B7C3F),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 10), // Optional padding
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 0,
                                        right: 15,
                                      ),
                                      child: Text(
                                        "Fresh Parsley \nveg",
                                        style: TextStyle(
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 110,
                              height: 148,
                              decoration: const BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Container(
                                      width: 110,
                                      height: 95,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffFFC107),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(100),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 18,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                                left: 5,
                                              ),
                                              child: Image.asset(
                                                "Assets/Images/3rd.png",
                                                width: 60,
                                                height: 60,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 65,
                                              right: 5,
                                            ),
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff1B7C3F),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 10), // Optional padding
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 30,
                                      ),
                                      child: Text(
                                        "Whole Red \nChilli",
                                        style: TextStyle(
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recipe Integration",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1B7C3F),
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(
                          width: 148,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff2E98D7),
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff2E98D7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                        ),
                        child: Container(
                          width: 330,
                          height: 76,
                          decoration: const BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 50,
                            ),
                            child: Image.asset(
                              "Assets/Images/recipe1.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

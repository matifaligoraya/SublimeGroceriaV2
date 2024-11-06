// ignore: file_names
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xff2E98D7),
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 350,
                        height: 90,
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
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Column(
                            // Change from Row to Column to add multiple Rows
                            children: [
                              // First Row
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
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 2,
                                            ),
                                            child: Container(
                                              height: 20,
                                              width: 80,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffD4EDDA),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3)),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                  top: 1,
                                                  bottom: 2,
                                                  left: 2,
                                                  right: 2,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.access_time,
                                                      color: Color(0xff1B7C3F),
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
                                      const SizedBox(width: 40),
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
                              const SizedBox(
                                  height: 15), // Add spacing between rows

                              // Second Row - New Row
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
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
                                      child: Text("4 Out of 51 Items Purchased",
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
                                      child: Text("4 Pending",
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
                  padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "suggested Items",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1B7C3F),
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                        ),
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

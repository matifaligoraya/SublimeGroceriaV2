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
                                              width: 78,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffD4EDDA),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3)),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2, vertical: 1),
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
                        width: 140,
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
                            width: 120,
                            height: 148,
                            decoration: const BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 120,
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 25,
                                      top: 18,
                                    ),
                                    child: Image.asset("Assets/Images/1st.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shadwahmed_exam/design%202/card2_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'card 1.dart';
import 'card 2.dart';
import 'card1_list.dart';

class HomeScreenDesign2 extends StatefulWidget {
  HomeScreenDesign2({super.key});

  static const String routeName = 'hhi';

  @override
  State<HomeScreenDesign2> createState() => _HomeScreenDesign2State();
}

class _HomeScreenDesign2State extends State<HomeScreenDesign2> {
  final _controller = PageController();

  int value = 0;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        "assets/images_d2/icon.png",
                        height: 56.4,
                        width: 56.4,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, jade",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text("Ready to workout?",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black)),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Badge(
                        label: Text('$value'),
                        alignment: AlignmentDirectional.topEnd,
                        isLabelVisible: true,
                        smallSize: 20,
                        child: Icon(Icons.notifications)),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 82,
                width: 326,
                color: Color(0xffF8F9FC),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images_d2/ic_heart.png",
                            height: 18,
                            width: 86,
                          ),
                          Row(
                            children: [
                              Text("81",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black)),
                              Text(" BPM",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images_d2/ic_todo.png",
                            height: 18,
                            width: 86,
                          ),
                          Row(
                            children: [
                              Text("81",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black)),
                              Text(" 32.5%",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images_d2/ic_cal.png",
                            height: 18,
                            width: 86,
                          ),
                          Row(
                            children: [
                              Text("81",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black)),
                              Text(" 1000",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text("Workout Programs",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black)),
                  ],
                ),
              ),
              TabBar(
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                tabs: [
                  Tab(
                    text: "All Type",
                  ),
                  Tab(
                    text: "Full Body",
                  ),
                  Tab(
                    text: "Upper",
                  ),
                  Tab(
                    text: "Lower",
                  )
                ],
              ),
              tabs[index],
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff363F72),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.navigation_outlined, size: 25), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart,
                  size: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    Card1List(),
    Card2List(),
    Card1List(),
    Card2List(),
  ];
}

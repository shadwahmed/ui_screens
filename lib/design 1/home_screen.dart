import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = PageController();

  static const String routeName = 'homeScreen';
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset("assets/images_d1/logo_name.png"),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Badge(
                      label: Text('$value'),
                      alignment: AlignmentDirectional.topEnd,
                      isLabelVisible: true,
                      smallSize: 20,
                      child: Icon(Icons.notifications)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Feature",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 203,
                  ),
                  Text("See more",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Color(0xff027A48),
                      )),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: Color(0xff027A48),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Hello,",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "Sare Rose",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(children: [
                  Text(
                    "How are you feeling today ?",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ]),
              ),
              Row(
                children: [
                  Expanded(child: Image.asset("assets/images_d1/ic_love.png")),
                  Expanded(child: Image.asset("assets/images_d1/ic_cool.png")),
                  Expanded(child: Image.asset("assets/images_d1/ic_happy.png")),
                  Expanded(child: Image.asset("assets/images_d1/ic_sad.png")),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Love",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Cool",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Happy",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    "Sad",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
              Container(
                height: 190,
                child: PageView(
                  controller: _controller,
                  children: [
                    Image.asset("assets/images_d1/Frame 24.png"),
                    Image.asset("assets/images_d1/Frame 24.png"),
                    Image.asset("assets/images_d1/Frame 24.png")
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                  dotHeight: 8,
                  dotColor: Colors.grey,
                  dotWidth: 8,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 203,
                  ),
                  Text("See more",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Color(0xff027A48),
                      )),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: Color(0xff027A48),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset("assets/images_d1/Frame 31.png"),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Image.asset("assets/images_d1/Frame 35.png")
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset("assets/images_d1/Frame 35 (1).png"),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Image
                      .asset("assets/images_d1/Frame 33.png")
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_rounded, size: 25), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
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
    );
  }
}

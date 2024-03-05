import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'choice_chip.dart';
import 'discover_screen.dart';

class HomeScreenD3 extends StatefulWidget {
  HomeScreenD3({super.key});

  static const String routeName = 'uyio';

  @override
  State<HomeScreenD3> createState() => _HomeScreenD3State();
}

class _HomeScreenD3State extends State<HomeScreenD3> {
  TextEditingController controller = TextEditingController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE4E7EC),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Center(child: Image.asset("assets/images_d3/logo.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 320,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffD0D5DD),
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Articles, Video, Audio and More,...",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffD0D5DD),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ChoiceChipList(),
            SizedBox(
              height: 16,
            ),
            tabs[index],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff6941C6),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 25,
            ),
            label: 'Today',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded, size: 25), label: 'Insights'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
                size: 25,
              ),
              label: 'Chat'),
        ],
      ),
    );
  }

  List<Widget> tabs = [
    DiscoverScreen(),
    Text("ghj"),
    DiscoverScreen(),
    Text("ghj"),
    Text("ghj"),
  ];
}

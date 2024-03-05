import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 174,
        width: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF8F9FC),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "7 days",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0xffFCFCFD),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color(0xffEAECF5),
                                    width: 1,
                                  ))),
                        ),
                      ),
                      Text("Morning Yoga",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)),
                      Text("Improve mental focus.",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black)),
                      Row(
                        children: [
                          Icon(Icons.lock_clock),
                          Text(" 30 mins")
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images_d2/removal 2.png",
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 174,
        width: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF8F9FC),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "3 days",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0xffFCFCFD),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color(0xffEAECF5),
                                    width: 1,
                                  ))),
                        ),
                      ),
                      Text("Plank Exercise",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black)),
                      Text("Improve mental focus.",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black)),
                      Row(
                        children: [
                          Icon(Icons.lock_clock),
                          Text(" 30 mins")
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images_d2/pngwing 1.png",
                  height: 110,
                ),
              ],
            ),
          ],
        ),
      ),
    ],);
  }
}

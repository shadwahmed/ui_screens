import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CarouselSlider.dart';
import 'card.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});
   static const String routeName ='hj';

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Hot topics",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 170,
            ),
            Text("See all ",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff5925DC),
                )),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
              color: Color(0xff5925DC),
            ),
          ],
        ),
        SizedBox(height: 12,),
        sliderTabs(),
        SizedBox(height: 20,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Get Tips",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        CardDoctor(),
        SizedBox(height: 20,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Cycle Phases and Period",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text("See all ",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff5925DC),
                )),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
              color: Color(0xff5925DC),
            ),
          ],
        ),
      ],
    );
  }
}

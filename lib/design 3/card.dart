import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDoctor extends StatelessWidget {
  const CardDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffdee0e3),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/images_d3/ic_doc.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Connect with doctors & ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  "get suggestions ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  "Connect now and get",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  "expert insights ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff7F56D9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  child: Text(
                    "View detail",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

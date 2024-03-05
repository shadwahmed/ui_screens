import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'discover_screen.dart';

class ChoiceChipList extends StatefulWidget {
  const ChoiceChipList({super.key});

  @override
  State<ChoiceChipList> createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  bool _isSelected = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 35,
          ),
          ChoiceChip(
            label: Text("Discover",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _isSelected == false
                      ? Color(0xff667085)
                      : Color(0xff6941C6),
                )),
            backgroundColor: Color(0xffE4E7EC),
            shape: StadiumBorder(side: BorderSide()),
            selected: _isSelected,
            onSelected: (newBoolValue) {
              _isSelected = newBoolValue;

              setState(() {
                });
            },
            showCheckmark: false,
            side: BorderSide(
              color: _isSelected == false ? Color(0xffD0D5DD) : Color(0xffD6BBFB),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          ChoiceChip(
            label: Text("News",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _isSelected2 == false
                      ? Color(0xff667085)
                      : Color(0xff6941C6),
                )),
            backgroundColor: Color(0xffE4E7EC),
            shape: StadiumBorder(side: BorderSide()),
            selected: _isSelected2,
            onSelected: (newBoolValue) {
              _isSelected2 = newBoolValue;
              setState(() {});
            },
            showCheckmark: false,
            side: BorderSide(
              color:
                  _isSelected2 == false ? Color(0xffD0D5DD) : Color(0xffD6BBFB),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          ChoiceChip(
            label: Text("Most Viewed",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _isSelected3 == false
                      ? Color(0xff667085)
                      : Color(0xff6941C6),
                )),
            backgroundColor: Color(0xffE4E7EC),
            shape: StadiumBorder(side: BorderSide()),
            selected: _isSelected3,
            onSelected: (newBoolValue) {
              _isSelected3 = newBoolValue;
              setState(() {});
            },
            showCheckmark: false,
            side: BorderSide(
              color:
                  _isSelected3 == false ? Color(0xffD0D5DD) : Color(0xffD6BBFB),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          ChoiceChip(
            label: Text("Saved",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _isSelected4 == false
                      ? Color(0xff667085)
                      : Color(0xff6941C6),
                )),
            backgroundColor: Color(0xffE4E7EC),
            shape: StadiumBorder(side: BorderSide()),
            selected: _isSelected4,
            onSelected: (newBoolValue) {
              _isSelected4 = newBoolValue;
              setState(() {});
            },
            showCheckmark: false,
            side: BorderSide(
              color:
                  _isSelected4 == false ? Color(0xffD0D5DD) : Color(0xffD6BBFB),
            ),
          ),
        ],
      ),
    );
  }
}

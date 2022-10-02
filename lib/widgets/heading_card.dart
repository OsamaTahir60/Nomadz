import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget headingCard() {
  return Stack(children: [
    Container(
      height: 250.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/onboarding1.png"), fit: BoxFit.cover),
      ),
    ),
    Positioned(
      top: 40.h,
      left: 50.w,
      right: 50.w,
      child: Column(
        children: [
          Text(
            "MARk",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 60.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "S T U D I O S",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 30.sp,
                  color: Color(0xFFFFFFFF).withOpacity(0.8),
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Professional on-Demond",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18.sp,
                  color: Color(0xFFFFFFFF).withOpacity(0.8),
                  fontWeight: FontWeight.normal),
            ),
          ),
          Text(
            "Video Editing",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18.sp,
                  color: Color(0xFFFFFFFF).withOpacity(0.8),
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    )
  ]);
}

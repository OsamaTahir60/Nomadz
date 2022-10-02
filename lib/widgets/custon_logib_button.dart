import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Widget CustomLoginButton({
  final String title = "",
  Function()? onPress,
}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(left: 2.2, right: 2.w, bottom: 10.h),
        child: Container(
          height: 50.0.h,
          width: 450.w,
          decoration: BoxDecoration(
            color: kgreenColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget CustomgreyButton({
  final String title = "",
  Function()? onPress,
}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(left: 2.2, right: 2.w, bottom: 10.h),
        child: Container(
          height: 50.0.h,
          width: 450.w,
          decoration: BoxDecoration(
            color: Color(0xff656565),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

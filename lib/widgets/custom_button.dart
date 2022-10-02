import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customButtonWithIcon(
    {required Function() onpress, String buttonTitle = '', color}) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 52.h,
      width: 200.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r), color: color),
      child: Padding(
        padding: EdgeInsets.only(left: 40.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              buttonTitle,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Icon(Icons.arrow_forward, color: Colors.black)
          ],
        ),
      ),
    ),
  );
}

Widget customButton(
    {required Function() onpress, String buttonTitle = '', color}) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 52.h,
      width: 200.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r), color: color),
      child: Center(
        child: Text(
          buttonTitle,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
        ),
      ),
    ),
  );
}

Widget customsocialButton({
  required Function() onpress,
  String buttonTitle = '',
  buttoncolor,
  textColor,
  borderColor,
}) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 62.h,
      width: 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: buttoncolor,
          border: Border.all(color: borderColor)),
      child: Center(
        child: Text(
          buttonTitle,
          style: GoogleFonts.comicNeue(
            textStyle: TextStyle(
                fontSize: 18.sp, fontWeight: FontWeight.w800, color: textColor),
          ),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nomadz/widgets/custom_text.dart';

Widget iconwithtext({icon, text, ontab}) {
  return InkWell(
    onTap: ontab,
    child: Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5.r))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 15.r,
              color: Colors.white,
            ),
            SizedBox(
              width: 5.h,
            ),
            CustomText(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              text: '',
            ),
          ],
        ),
      ),
    ),
  );
}

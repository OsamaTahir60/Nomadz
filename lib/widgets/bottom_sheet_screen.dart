import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';
import 'package:nomadz/widgets/custom_button.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import 'custom_form_field.dart';
import 'custom_text.dart';

Widget bottomSheetcontent() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
    child: Container(
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Password Change",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Center(
              child: CustomFormField(
                hintText: "Old Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Password Change",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Center(
              child: CustomFormField(
                hintText: "New Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Center(
              child: CustomFormField(
                hintText: "Repeat New Password",
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomLoginButton(
              title: "LOGIN",
              onPress: () {
                // Get.to(() => OnBoardingScreen());
              }),
        ],
      ),
    ),
  );
}

Widget bottomSheetcontentforprice() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
    child: Container(
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Sort by",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Popular",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Newest",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Price: lowest to high",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Price: lowest to low",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Customer review",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

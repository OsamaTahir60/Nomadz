import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/filtter_screen.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../constants.dart';

class CatogeryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          title: CustomText(
            text: "Categories",
            color: Colors.black,
          )),
      backgroundColor: Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: klightGreyColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomText(
                        text: "Fishing",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      CustomText(
                        text: "Fly Fishing",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      CustomText(
                        text: "Hunting",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      CustomText(
                        text: "Mountain",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: 120.h,
                width: Get.width,
                decoration: BoxDecoration(
                  color: kgreenColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "DEALS & STEALS",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    CustomText(
                      text: "Up to 50% off",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 120.h,
                  width: 210,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: InkWell(
                    child: Center(
                      child: CustomText(
                        text: "Fishing",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 120.h,
                    width: 175.w,
                    decoration: BoxDecoration(
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120.h,
                  width: 210,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: InkWell(
                    child: Center(
                      child: CustomText(
                        text: "Fly Fishing",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 120.h,
                    width: 175.w,
                    decoration: BoxDecoration(
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120.h,
                  width: 210,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: InkWell(
                    child: Center(
                      child: CustomText(
                        text: "Hunting ",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 120.h,
                    width: 175.w,
                    decoration: BoxDecoration(
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120.h,
                  width: 210,
                  decoration: BoxDecoration(
                    color: kgreenColor,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: InkWell(
                    child: Center(
                      child: CustomText(
                        text: "Mountain",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 120.h,
                    width: 175.w,
                    decoration: BoxDecoration(
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

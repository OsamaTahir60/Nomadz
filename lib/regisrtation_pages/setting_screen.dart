import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:nomadz/constants.dart';

import 'package:nomadz/widgets/bottom_sheet_screen.dart';
import 'package:nomadz/widgets/custom_button.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          backgroundColor: bgColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Settings",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Personal Information",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 95.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: CustomFormField(
                      labelText: " Full",
                      hintText: "Full name",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 95.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: CustomFormField(
                      labelText: "Date of Birth",
                      hintText: "12/12/1989",
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      text: "Password",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Get.bottomSheet(Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    topRight: Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 16.0,
                                      spreadRadius: 0.5,
                                      offset: Offset(0.7, 0.7)),
                                ]),
                            height: Get.height,
                            child: bottomSheetcontent()));
                      },
                      child: CustomText(
                        text: "Change",
                        fontSize: 13.sp,
                        color: klightGreyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 95.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: CustomFormField(
                      labelText: "Password",
                      hintText: "********",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Notification",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextWithRowToogle(
              text: "Sale",
            ),
            TextWithRowToogle(
              text: "New Arrivals",
            ),
            TextWithRowToogle(
              text: "Delivery Status changes",
            )
          ],
        ),
      ),
    );
  }
}

class TextWithRowToogle extends StatelessWidget {
  String text;
  TextWithRowToogle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: text,
              fontSize: 18.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Transform.scale(
              scale: 1.5,
              child: Switch(
                onChanged: (v) {},
                value: true,
                activeColor: Colors.black,
                activeTrackColor: klightGreyColor,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.white,
              )),
        ),
      ],
    );
  }
}

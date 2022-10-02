import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class ShippingLableEstimatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          title: CustomText(
            text: "",
            color: Colors.black,
          )),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 50),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Ships from ")),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Lakewood, CO, United States")),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Your Zip/Postal Code")),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "[Input Zip Code]")),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Shipping to")),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Total Package Weight (lbs)o")),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(text: "Package Dimensions")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(text: "L in")),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(text: "W in")),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(text: "H  in")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                CustomLoginButton(onPress: () {}, title: "Get Estimate")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

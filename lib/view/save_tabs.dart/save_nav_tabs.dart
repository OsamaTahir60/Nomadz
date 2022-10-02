import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:nomadz/widgets/container_icon.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SaveNavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 380),
              child: Container(height: 370.h, color: Color(0xff707070)),
            ),
            Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                CustomText(
                  text: "Why Sell on Nomadz?",
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 300.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/200/300"),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                      fontSize: 20.sp,
                      color: Colors.white,
                      text:
                          " Created and built by outdoor \n      enthusiasts, Nomadz is \ndesigned to make selling your \n                gear simple"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 150.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/200/300"),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: "Secure Transactions &\n        Safe Shipping",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0, right: 150),
                  child: Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                    text:
                        "You can feel confident selling on a \n      trusted plateforms with hassle-\n              free shipping options."),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: "I WANT TO:",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(text: "(Select one)"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "RENT MY GEARI WANT TO"),
                        SizedBox(
                          width: 10.h,
                        ),
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "HOST ADVENTURES"),
                        SizedBox(
                          width: 10.h,
                        ),
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "SELL MY GEAR"),
                        SizedBox(
                          width: 10.h,
                        ),
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "RENT MY GEARI WANT TO"),
                        SizedBox(
                          height: 10.h,
                        ),
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "RENT MY GEARI WANT TO"),
                        SizedBox(
                          height: 10.h,
                        ),
                        imagerowtext(
                            urlImage: "https://picsum.photos/200/300",
                            text: "RENT MY GEARI WANT TO"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: " NOMADZ' PRICING IS\n                   SIMPLE",
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: "Posting your gear/trips is free",
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
                CustomText(
                  text: "and simple. When your gear or adventure ",
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
                CustomText(
                  text: "is purchased, we deduct our 9% transaction",
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
                CustomText(
                  text: "and you keep the rest.",
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CircularPercentIndicator(
                  radius: 90.0.r,
                  lineWidth: 30.0,
                  percent: 1.0,
                  center: new Text("100%"),
                  progressColor: Color(0xff65D643),
                ),
                SizedBox(
                  height: 40.h,
                ),
                // CircularProgressIndicator(backgroundColor: Colors.amber,,)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff65D643),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    CustomText(
                      text: "YOURS",
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff1A698D),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    CustomText(
                      text: "NOMADZ",
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text:
                      " UNLIMITED FREE POSTINGS &\n       TRANSPARENT PRICING",
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: " When You Sell",
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0, right: 150),
                  child: Divider(
                    thickness: 5,
                    color: Colors.grey[800],
                  ),
                ),
                CustomText(
                  text: "You should feel confident when",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "renting and selling your gear. Nomadz",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "has implemented extensive tools to",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "make sure fraud is prevented,",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "even on the highest level.",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  text: " Through Nomadz Payments, we",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),

                CustomText(
                  text: " securely process payments for",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: " you so that you can have peace of",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "mind knowing you'll be paid",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "outside of Nomadz do not qualify",
                  color: Colors.grey[600],
                  fontSize: 15.sp,
                ),
                CustomText(
                  text: "for Nomadz Protection.",
                  color: Colors.grey[600],
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: " FEEL SAFE WHILE CONNECTING",
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: "WITH LIKE-MINDED GEAR HEADS",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200.h,
                    width: 340.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class imagerowtext extends StatelessWidget {
  String urlImage;
  String text;
  imagerowtext({
    required this.urlImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(urlImage), fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          text: text,
          color: Colors.black,
          fontSize: 8.sp,
        ),
      ],
    );
  }
}

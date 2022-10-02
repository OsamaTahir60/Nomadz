import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/view/checkout_screens/add_shipping_address.dart';

import 'package:nomadz/widgets/custom_text.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => AddShippingAddress());
          },
          child: Icon(Icons.add),
          backgroundColor: kgreenColor,
        ),
        backgroundColor: Color(0Xfff6f6f6),
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          foregroundColor: Colors.black,
          title: Center(child: const Text('Checkout')),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 25.h,
                ),
                width: 413.w,
                height: 185.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.w,
                      offset: Offset(0.w, 10.w),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Jane Doe',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: '3 Newbridge Court',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: 'Chino Hills, CA 91709, United States',
                          fontSize: 14.sp,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                fillColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                value: true,
                                onChanged: (value) {}),
                            CustomText(
                              text: 'Use as the shipping address',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Edit',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 25.h,
                ),
                width: 413.w,
                height: 185.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.w,
                      offset: Offset(0.w, 10.w),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Jane Doe',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: '3 Newbridge Court',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: 'Chino Hills, CA 91709, United States',
                          fontSize: 14.sp,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                fillColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                value: false,
                                onChanged: (value) {}),
                            CustomText(
                              text: 'Use as the shipping address',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Edit',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 25.h,
                ),
                width: 413.w,
                height: 185.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.w,
                      offset: Offset(0.w, 10.w),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Jane Doe',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: '3 Newbridge Court',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text: 'Chino Hills, CA 91709, United States',
                          fontSize: 14.sp,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                fillColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                value: false,
                                onChanged: (value) {}),
                            CustomText(
                              text: 'Use as the shipping address',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Edit',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ])));
  }
}

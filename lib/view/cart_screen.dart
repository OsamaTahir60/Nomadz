import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/checkout_screens/chechout_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import '../model/RentYourGearModel.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  RentYourGearModel loggedInUser = RentYourGearModel();
  String Brand = "",Model="",Finish="",Year="",Description="",PriceDaily="",PriceWeekly="",PriceMonthly="";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("Rent Your Gear")
        .doc('ouwhFXwnxYZ649cbTq2EtlnJS1V2')
        .get()
        .then((value) {
      this.loggedInUser = RentYourGearModel.fromMap(value.data());
      Brand = value.data()!['Brand'];
      Model = value.data()!['Model'];
      Finish = value.data()!['Finish'];
      Year = value.data()!['Year'];
      Description = value.data()!['Description'];
      PriceDaily = value.data()!['PriceDaily'];
      PriceWeekly = value.data()!['PriceWeekly'];
      PriceMonthly = value.data()!['PriceMonthly'];
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0Xfff6f6f6),
        appBar: AppBar(
          backgroundColor: Color(0Xfff6f6f6),
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                text: 'Cart',
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
              Container(
                height: 134.h,
                width: 413.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 121.w,
                      height: 134.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/product_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: CustomText(
                            text: Brand,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: 'Color: ',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: Finish,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: 'Size: ',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: 'L',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.sp),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.remove,
                                size: 30.sp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomText(
                              text: '1',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.sp),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.add,
                                size: 30.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, bottom: 20.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              size: 30.sp,
                              color: Colors.black,
                            ),
                          ),
                          CustomText(
                            text: "\$"+PriceDaily,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 300.h,
              ),
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                        padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                        height: 685.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Color(0xffe9e9e9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: Get.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 6.sp, right: 6.sp),
                                  child: Stack(
                                    children: [
                                      CustomFormField(
                                        hintText: 'Enter your Promo Code',
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 20.h),
                                          height: 60.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50.sp),
                                            color: Color(0xff3f852b),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(0.0, 4.0),
                                                blurRadius: 10.0,
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: 30.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 21.h,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 6.sp, right: 6.sp),
                                  child: CustomText(
                                    text: 'Your Promo Codes',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 21.h,
                                ),
                                Container(
                                  width: 413.w,
                                  height: 102.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 4.0),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 90.w,
                                        height: 102.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          color: Colors.black,
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: '10',
                                                fontSize: 34,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  CustomText(
                                                    text: '%',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                  CustomText(
                                                    text: 'OFF',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: 'Personal offer',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff313030),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          CustomText(
                                            text: 'mypromocode2020',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff313030),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: '6 days remaining',
                                            fontSize: 12.sp,
                                            color: Color(0xff313030),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                              width: 90.w,
                                              child: CustomLoginButton(
                                                title: 'Apply',
                                                onPress: () {
                                                  Get.back();
                                                },
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  width: 413.w,
                                  height: 102.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 4.0),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 90.w,
                                        height: 102.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          color: Colors.black,
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: '15',
                                                fontSize: 34,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  CustomText(
                                                    text: '%',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                  CustomText(
                                                    text: 'OFF',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: 'Summer Sale',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff313030),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          CustomText(
                                            text: 'summer2020',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff313030),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 22.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: '23 days remaining',
                                            fontSize: 12.sp,
                                            color: Color(0xff313030),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                              width: 90.w,
                                              child: CustomLoginButton(
                                                title: 'Apply',
                                                onPress: () {
                                                  Get.back();
                                                },
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
//                     child:Column(
//                       children: [
//                         SizedBox(height:10.h),
//                        Center(child: Container(color: Color(0xff707070),width: 73.w,height:8.h)),
//                        SizedBox(height:23.h),
//                        CustomText(text: 'Add New Card',fontSize: 18.sp,fontWeight: FontWeight.bold,),
//                        SizedBox(height:29.h),
//                        Container(
//                          color: Colors.white,
//                          child: CustomFormField(
//                            hintText: 'Name on Card',

//                            ),
//                        ),
//  Container(
//    width: Get.width,
//                          color: Colors.white,
//                          child:
//                              CustomFormField(
//                                hintText: 'Name on Card',

//                                ),

//                        ),
//                       ],
//                     )

                    ),
                  );
                },
                child: Stack(
                  children: [
                    CustomFormField(
                      hintText: 'Enter your Promo Code',
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20.h),
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.sp),
                          color: Color(0xff3f852b),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30.sp,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Total amount: ',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  CustomText(
                    text: "\$" + PriceDaily,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              CustomLoginButton(
                  title: 'Checkout',
                  onPress: () {
                    Get.to(() => CheckoutScreen());
                  }),
            ])));
  }
}



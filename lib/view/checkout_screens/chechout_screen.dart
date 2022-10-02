import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/model/ShopSetting.dart';
import 'package:nomadz/view/checkout_screens/add_shipping_address.dart';
import 'package:nomadz/view/checkout_screens/payment_method_screen.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import '../../model/RentYourGearModel.dart';
import '../bottom_nev_bar_screen.dart';
import '../home_exploring_screen.dart';
import 'shipping_address.dart';


class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}
class _CheckoutScreenState extends State<CheckoutScreen> {
  ShopSetting loggedInUser = ShopSetting();
  String AccountNumber = "",AccountName="",FullName="",RoutingNumber="",Street="",Street2="",Street3="",Zip="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("Shop Setting")
        .doc('ouwhFXwnxYZ649cbTq2EtlnJS1V2')
        .get()
        .then((value) {
      this.loggedInUser = ShopSetting.fromMap(value.data());
      AccountNumber = value.data()!['AccountNumber'];
      AccountName = value.data()!['AccountName'];
      FullName = value.data()!['FullName'];
      RoutingNumber = value.data()!['RoutingNumber'];
      Street = value.data()!['Street'];
      Street2 = value.data()!['Street2'];
      Street3 = value.data()!['Street3'];
      Zip = value.data()!['Zip'];
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        foregroundColor: Colors.black,
        title: Center(child: const Text('Checkout')),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Shipping Address',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 25.h,
              ),
              width: 413.w,
              height: 134.h,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: Street,
                        fontSize: 14.sp,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomText(
                        text: Street2,
                        fontSize: 14.sp,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomText(
                        text: Street3,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                  SizedBox(width: 150.0,),
                  InkWell(
                      onTap: () {
                        Get.to(() => ShippingAddressScreen());
                      },
                      child: CustomText(
                        text: 'Change',
                        fontSize: 16.sp,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Payment',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => PaymentMethodScreen());
                  },
                  child: CustomText(
                    text: 'Change',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 44.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 65.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(8.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.w,
                        offset: Offset(0.w, 10.w),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset('assets/Mastercard-logo.png'),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomText(
                  text: '**** **** **** 3947',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: 46.h,
            ),
            CustomText(
              text: 'Delivery Method',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 93.h,
                  width: 110.w,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(8.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.w,
                        offset: Offset(0.w, 10.w),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/FedEx_logo_oran.png'),
                      CustomText(
                        text: '2-3 days',
                        color: Color(0xff8d8d8d),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 93.h,
                  width: 110.w,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(8.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.w,
                        offset: Offset(0.w, 10.w),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/FedEx_logo_oran.png'),
                      CustomText(
                        text: '2-3 days',
                        color: Color(0xff8d8d8d),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 93.h,
                  width: 110.w,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(8.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.w,
                        offset: Offset(0.w, 10.w),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/FedEx_logo_oran.png'),
                      CustomText(
                        text: '2-3 days',
                        color: Color(0xff8d8d8d),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Order:',
                      fontSize: 14.sp,
                    ),
                    CustomText(
                      text: '\$100.00',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Delivery:', fontSize: 14.sp),
                    CustomText(
                      text: '\$5.10',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Summary:',
                      fontSize: 14.sp,
                    ),
                    CustomText(
                      text: '\$217.20',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomLoginButton(
                  title: 'SUBMIT ORDER',
                  onPress: (){
                    Fluttertoast.showToast(msg: "Order Had Been Submitted");
                    Get.to(() => PaymentMethodScreen());


                  }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

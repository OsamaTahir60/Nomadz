import 'package:bubble/bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/model/ShopSetting.dart';
import 'package:nomadz/view/Create_Sell_Gear_listing.dart';
import 'package:nomadz/widgets/custom_button.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../../widgets/custon_logib_button.dart';


class ShoppingSettingScreen extends StatefulWidget {
  const ShoppingSettingScreen({Key? key}) : super(key: key);

  @override
  _ShoppingSettingScreenState createState() => _ShoppingSettingScreenState();
}

class _ShoppingSettingScreenState extends State<ShoppingSettingScreen>{
  TextEditingController FullName = new TextEditingController();
  TextEditingController Street = new TextEditingController();
  TextEditingController Street2 = new TextEditingController();
  TextEditingController Street3 = new TextEditingController();
  TextEditingController Zip = new TextEditingController();
  TextEditingController AccountName = new TextEditingController();
  TextEditingController RoutingNumber = new TextEditingController();
  TextEditingController AccountNumber = new TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: CustomText(
            text: " Shop Setting",
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                    text:
                    "Choose how you get paid when your listings sell and setyour return policy for your shop to start making money.You'll only have to do this once and you can always modifyyour settings later"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: "Step 1. Shipping Address",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text:
                    "Your shipping address will be used to calculate shipping   costs for buyers.",
                  ),
                ),
              ),
              Container(
                height: 40.h,
                width: Get.width,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "COUNTRY",
                        fontSize: 10.sp,
                        color: Colors.grey[200],
                      ),
                      CustomText(
                          text: "United States",
                          fontSize: 10.sp,
                          color: Colors.black),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    child: CustomFormField(
                      controller: FullName,
                      hintText: "Full Name",
                    ),),
                  Container(
                    height: 70,
                    child: CustomFormField(
                      controller: Street,
                      hintText: "Street",
                    ),),
                  Row(
                    children: [
                      Container(
                        height: 80.h,
                        width: 185.w,
                        child: Container(
                          child: CustomFormField(
                            controller: Street2,
                            hintText: "Street2",
                          ),),),
                      Container(
                        height: 80.h,
                        width: 185.w,
                        child: Container(
                          child: CustomFormField(
                            controller: Street3,
                            hintText: "Street2",
                          ),),),
                    ],
                  ),
                  Container(
                    height: 80.h,
                    child: Container(
                      child: CustomFormField(
                        controller: Zip,
                        hintText: "Zip",
                      ),),),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      CustomText(
                          text: "Set as default address for future orders",
                          fontSize: 10.sp,
                          color: Colors.black),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                          text: " Step 2. Payment Settings",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                          text:
                          "Your earnings will be automatically sent to your bank account.",
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                          text:
                          "For your first sale, Nomadz initiates your payout following confirmation your item has been delivered(for Gear Listings) or \"Approved"
                              "(for Rental & AdventureListings"
                              ").",
                          color: Colors.black),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "Name No  Account ",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    height: 80.h,
                    child: Container(
                      child: CustomFormField(
                        controller: AccountName,
                        hintText: "Name No  Account",
                      ),),),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "Routing Number*",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    height: 80.h,
                    child: Container(
                      child: CustomFormField(
                        controller: RoutingNumber,
                        hintText: "Routing Number*",
                      ),),),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "Account Number*",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    height: 80.h,
                    child: Container(
                      child: CustomFormField(
                        controller: AccountNumber,
                        hintText: "Account Number",
                      ),),),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "Account No  Account ",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    height: 80.h,
                    child: Container(
                      child: CustomFormField(
                        controller: AccountNumber,
                        hintText: "Account No  Account",
                      ),),),
                ],
              ),
              Container(
                height: 40.h,
                width: Get.width,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomText(
                      text: "BILLING ADDRESS",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  CustomText(
                      text: "Same as shipping address",
                      fontSize: 10.sp,
                      color: Colors.black),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                    text: " Step 3. What's your return policy?",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(thickness: 2),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                        text: " Reverb Recommended Return Policy",
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      text: "Return Window,",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      fontWeight: FontWeight.bold,
                      text: "Used & Vintage Items - 7 Days",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      text:
                      "Used & Vintage items may be returned within 7 days of the delivery date.,",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      fontWeight: FontWeight.bold,
                      text: "New Items - 14 Days,",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      text:
                      "New items may be returned within 14 days of the delivery date.",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      fontWeight: FontWeight.bold,
                      text: "General Terms",
                      fontSize: 13.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      text:
                      "packaging and no signs of use. Buyer assumes responsibility for all return shipping costs unless the item was not received as described.",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      fontWeight: FontWeight.bold,
                      text: "Refund",
                      fontSize: 13.sp,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                      text:
                      "Buyer receives full refund in their original payment method less any shipping costs",
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                        text: " Custom Policy",
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: CustomLoginButton(
                    title: "Save & Start Listing ->",
                    onPress: () {
                        if (FullName.text.isEmpty) {
                          Fluttertoast.showToast(msg: "FullName Cannot Be Empty");
                        } else if (Street.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Street Cannot Be Empty");
                        } else if (Street2.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Street2 Cannot Be Empty");
                        } else if (Street3.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Street2 Cannot Be Empty");
                        } else if (Zip.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Zip Cannot Be Empty");
                        } else if (AccountName.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Account Name Cannot Be Empty or provide zero");
                        }
                        else if (RoutingNumber.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Routing Number Cannot Be Empty or provide zero");
                        }
                        else if (AccountNumber.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Account Number Cannot Be Empty or provide zero");
                        } else {
                          postDetailsToFirestore();
                          Get.to(() => CreateSellGearListingPage());

                        }

                    }),
              )
            ],
          ),
        )
    );
  }
  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    ShopSetting gearModel = ShopSetting();

    // writing all the values
    gearModel.FullName = FullName.text;
    gearModel.Street = Street.text;
    gearModel.Street2 = Street2.text;
    gearModel.Street3 = Street3.text;
    gearModel.Zip = Zip.text;
    gearModel.AccountName = AccountName.text;
    gearModel.RoutingNumber = RoutingNumber.text;
    gearModel.AccountNumber = AccountNumber.text;

    await firebaseFirestore
        .collection("Shop Setting")
        .doc(user?.uid)
        .set(gearModel.toMap());
    Fluttertoast.showToast(msg: "Shop Detail Added Successful:) ");
  }
}

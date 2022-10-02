import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class AddShippingAddress extends StatelessWidget {
  const AddShippingAddress({ Key? key }) : super(key: key);

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
            CustomFormField(
     hintText:'Full Name',
            ),
            CustomFormField(
     hintText:'Address',
            ),
            CustomFormField(
     hintText:'City',
            ),
            CustomFormField(
     hintText:'States/Province/Region',
            ),
              CustomFormField(
     hintText:'Zip Code ( Postal Code )',
            ),
              CustomFormField(
     hintText:'Country',
            ),
            SizedBox(height: 36.sp,),
            CustomLoginButton(title: 'SAVE ADDRESS',onPress: (){Get.back();},),
          ])));
  }
}
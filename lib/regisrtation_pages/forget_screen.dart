import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nomadz/constants.dart';

import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../widgets/custon_logib_button.dart';
import 'login_page.dart';
import 'on_bording_screen.dart';

class ForgetScreen extends StatelessWidget {
  final passwordreset = new TextEditingController();

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
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Forget Password",
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
                  text:
                      "Enter the email address you signed up with. You will receive a link to create a new password",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
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
                      controller: passwordreset,
                      labelText: "Email",
                      hintText: "Mirza@gmail.com",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            CustomLoginButton(
                title: "SEND",
                onPress: () {
                  resertPassword();
                  passwordreset.clear();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LogInScreen()));

                  // Get.to(() => OnBoardingScreen());
                }),
          ],
        ),
      ),
    );
  }
  Future resertPassword() async{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: passwordreset.text.trim());
    Fluttertoast.showToast(msg: "Password Reset Email Send");

  }
}

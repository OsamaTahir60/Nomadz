import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/view/bottom_nev_bar_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import '../services/firebase_services.dart';
import 'forget_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>{
  final EmailCon = new TextEditingController();
  final PasswordCon = new TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? errorMessage;
  bool isSignIn = false;

  FacebookLogin facebookLogin = FacebookLogin();
   User ?_user;

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Log in ",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.h,
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
                        controller: EmailCon,
                        labelText: "Email",
                        hintText: "Mirza@gmail.com",
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
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
                    padding: const EdgeInsets.all(9),
                    child: Center(
                      child: CustomFormField(
                        controller: PasswordCon,
                        labelText: "Password",
                        hintText: "*****",
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // resertPassword();
                         Get.to(() => ForgetScreen());
                      },
                      child: CustomText(
                        text: "Forgot your password?",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.forward)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomLoginButton(
                  title: "LOGIN",
                  onPress:(){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => BottomNavBar()));
                  }
                  // onPress: () async {
                  //   if(EmailCon.text.isEmpty){
                  //     Fluttertoast.showToast(msg: "Email can Not Be Empty");
                  //   }
                  //   else if(PasswordCon.text.isEmpty){
                  //     Fluttertoast.showToast(msg: "Password can Not Be Empty");
                  //   }
                  //   else{
                  //     try {
                  //       await _auth
                  //           .signInWithEmailAndPassword(email: EmailCon.text, password: PasswordCon.text)
                  //           .then((uid) => {
                  //         Fluttertoast.showToast(msg: "Login Successful"),
                  //         Navigator.of(context).pushReplacement(
                  //             MaterialPageRoute(builder: (context) => BottomNavBar())),
                  //       });
                  //     }on FirebaseAuthException catch (error) {
                  //       switch (error.code) {
                  //         case "invalid-email":
                  //           errorMessage = "Your email address appears to be malformed.";
                  //           break;
                  //         case "wrong-password":
                  //           errorMessage = "Your password is wrong.";
                  //           break;
                  //         case "user-not-found":
                  //           errorMessage = "User with this email doesn't exist.";
                  //           break;
                  //         case "user-disabled":
                  //           errorMessage = "User with this email has been disabled.";
                  //           break;
                  //         case "too-many-requests":
                  //           errorMessage = "Too many requests";
                  //           break;
                  //         case "operation-not-allowed":
                  //           errorMessage = "Signing in with Email and Password is not enabled.";
                  //           break;
                  //         default:
                  //           errorMessage = "An undefined Error happened.";
                  //       }
                  //       Fluttertoast.showToast(msg: errorMessage!);
                  //       print(error.code);
                  //     }
                  //   // Get.to(() => BottomNavBar());
                  // }
                  // }
                  ),
              SizedBox(height: 150),
              CustomText(
                text: "or Sign up with social account",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await FirebaseServices().signInWithGoogle();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNavBar()));
                    },
                    child: Container(
                      height: 100 .h,
                      width: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(child: Image.asset("assets/lo.png")),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: ()  {

                    },
                    child: Container(
                      height: 100.h,
                      width: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(child: Image.asset("assets/fb.png")),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}


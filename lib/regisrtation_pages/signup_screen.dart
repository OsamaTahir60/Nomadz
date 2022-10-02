
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/regisrtation_pages/login_page.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import '../AuthenticationHelper.dart';
import '../model/user_model.dart';
import '../services/firebase_services.dart';
import '../view/bottom_nev_bar_screen.dart';
import '../widgets/custon_logib_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen>{
  FirebaseAuth _auth = FirebaseAuth.instance;

  // FacebookLogin facebookLogin = FacebookLogin();

  final mAuth = FirebaseAuth.instance;
  final name = new TextEditingController();
  final Lname = new TextEditingController();

  final Uname = new TextEditingController();

  final Email = new TextEditingController();
  final password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                text: "Sign Up",
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
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
                  height: 90.h,
                  width: 170.w,
                  child: Padding(
                    padding: EdgeInsets.all(6.r),
                    child: Center(
                      child: CustomFormField(
                        controller: name,
                        labelText: "First Name",
                        hintText: "George",
                      ),
                    ),
                  ),
                ),
                Container(
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
                  height: 90.h,
                  width: 170.w,
                  child: Padding(
                    padding: EdgeInsets.all(6.r),
                    child: Center(
                      child: CustomFormField(
                        controller: Lname,
                        labelText: "Last Name",
                        hintText: "Muffin",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                height: 90.h,
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
                      controller: Uname,
                      labelText: "Username",
                      hintText: "SurferGeorge13",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 79.h,
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
                      controller: Email,
                      labelText: "Email",
                      hintText: "user123@gmail.com",
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
                      controller: password,
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
                      Get.to(() => LogInScreen());
                    },
                    child: CustomText(
                      text: "Already have an account?",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.forward)
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomLoginButton(
                title: "Sign up",
                onPress: () {
                  if(name.text.isEmpty ){
                    Fluttertoast.showToast(msg: "First Name can Not Be Empty");
                  }
                  else if(Lname.text.isEmpty ){
                    Fluttertoast.showToast(msg: "Last Name can Not Be Empty");
                  }
                  else if(Uname.text.isEmpty ){
                    Fluttertoast.showToast(msg: "User Name can Not Be Empty");
                  }
                  else if(Email.text.isEmpty ){
                    Fluttertoast.showToast(msg: "Email can Not Be Empty");
                  }
                  else if(password.text.isEmpty ){
                    Fluttertoast.showToast(msg: "Password can Not Be Empty");
                  }
                  else{
                    AuthenticationHelper()
                        .signUp(email: Email.text, password: password.text)
                        .then((result) {
                      if (result == null) {
                        postDetailsToFirestore();
                        Fluttertoast.showToast(msg: "Signup Successful");
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => BottomNavBar()));
                      } else {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 16),
                          ),
                        ));
                      }
                    });
                  }

                }),
            CustomText(
              text: "or Sign up with socual account",
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
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
                    height: 130.h,
                    width: 130.h,
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
                InkWell(
                  onTap: () async {
                    await handleLogin();
                  },
                  child: Container(
                    height: 130.h,
                    width: 130.h,
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
    );

  }
  Future<void> handleLogin() async {
    // final FacebookLoginResult result = await facebookLogin.logIn(['email']);
    // switch (result.status) {
    //   case FacebookLoginStatus.cancelledByUser:
    //     break;
    //   case FacebookLoginStatus.error:
    //     break;
    //   case FacebookLoginStatus.loggedIn:
    //     try {
    //       await loginWithfacebook(result);
    //     } catch (e) {
    //       print(e);
    //     }
    //     break;
    // }
  }

  // Future loginWithfacebook(FacebookLoginResult result) async {
  //   final FacebookAccessToken? accessToken = result.accessToken;
  //   AuthCredential credential =
  //   FacebookAuthProvider.credential(accessToken!.token);
  //   var a = await _auth.signInWithCredential(credential);
  //   setState(() {
  //     // isSignIn = true;
  //     // _user = a.user;
  //   });
  // }
  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.FirstName = name.text;
    userModel.LastName = Lname.text;
    userModel.UserName = Uname.text;
    userModel.Email = user?.email;

    await firebaseFirestore
        .collection("users")
        .doc(user?.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LogInScreen()));
  }
}



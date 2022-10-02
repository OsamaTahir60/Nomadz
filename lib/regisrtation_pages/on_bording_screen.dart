import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nomadz/constants.dart';

import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import 'login_page.dart';
import 'signup_screen.dart';

//
// class WelcomePage extends StatelessWidget {
//   const WelcomePage({key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 138.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 height: 120.0,
//                 width: 120.0,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/logo.png'),
//                     fit: BoxFit.fill,
//                   ),
//                   shape: BoxShape.rectangle,
//                 ),
//               ),
//               TwoToneHeading(
//                 heading: "Warrior Queen",
//                 subheading: "",
//               ),
//               const SizedBox(
//                 height: 180,
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.all(22.0),
//                   child: CustomButton(
//                     onTap: () {
//                       Get.to(() => LoginPage());
//                     },
//                     title: "Get Started",
//                     textColor: Colors.white,
//                     fontSize: 40.sp,
//                     btnColor: Color(0xff87764E),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               // Align(
//               //   alignment: Alignment.bottomCenter,
//               //   child: Outlinebutton(
//               //     onTap: () {
//               //       Get.to(() => SignUpPage());
//               //     },
//               //     title: "Get Started",
//               //     Color: Colors.white,
//               //   ),
//               // ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
    with TickerProviderStateMixin {
  late PageController _pageController;
  int currentIndex = 0;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    )..forward();
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TweenAnimationBuilder(
              //     duration: Duration(seconds: 2),
              //     tween: Tween<double>(begin: 4, end: 1),
              //     curve: Curves.linear,
              //     builder: (BuildContext context, double value, Widget? child) {
              //       return Column(
              //         children: [
              //           Container(
              //             height: 100 * value,
              //             color: kkhakiweb,
              //             child: Center(
              //               child:
              //             ),
              //           ),
              //         ],
              //       );
              //     }),
              // Stack(
              //   // alignment: Alignment.bottomCenter,
              //   children: <Widget>[
              // TweenAnimationBuilder(
              //     duration: Duration(seconds: 8),
              //     tween: Tween<double>(begin: 5, end: 2),
              //     curve: Curves.bounceOut,
              //     builder: (BuildContext context, double value, Widget? child) {
              //       return Column(
              //         children: [
              //           Container(
              //             height: 100 * value,
              //             width: 100,
              //             color: Colors.red,
              //             child: Center(
              //               child: Text(
              //                 "worriors queen",
              //                 style: TextStyle(color: Colors.amber),
              //               ),
              //             ),
              //           ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // )

              Container(
                height: 530.h,
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    makePage(
                        image: 'assets/onboarding1.png',
                        title: "Find Your Dreams Gear",
                        content:
                            "Join a global community of gear heads renting, buying and selling outdoor gear quickly and safely."),
                    makePage(
                        reverse: false,
                        image: 'assets/onboarding2.png',
                        title: "Buy",
                        content:
                            "Shop outdoor gear, make offers, send messages, and watch listings for price drop alerts."),
                    makePage(
                        image: 'assets/onBoarding5.png',
                        title: "Sell",
                        content:
                            "List gear and trips for free in minutes, respond to offers and messages, and manage your listing simply."),
                    makePage(
                        reverse: false,
                        image: 'assets/onboarding4.png',
                        title: "Discover",
                        content:
                            "Watch demos and instructional videos, read exclusive articles,and learn about new conservation efforts.."),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildIndicator(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomLoginButton(
                      title: "Sign Up",
                      onPress: () {
                        // Fluttertoast.showToast(msg: "Active After Payment Is Clear");
                          Get.to(() => SignUpScreen());
                      }),
                  CustomLoginButton(
                      title: "Log in",
                      onPress: () {
                        Get.to(() => LogInScreen());
                      }),
                  CustomText(
                    text: "Login with facebook",
                    color: kblueColor,
                  )
                ],
              ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fitWidth),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 10.h),
                    //   child: Image.asset(
                    //     image,
                    //     height: 499,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                )
              : const SizedBox(),
          SizedBox(
            height: 360.h,
          ),
          Text(title,
              style:
                  GoogleFonts.montserrat(color: Colors.black, fontSize: 20.sp)),
          Divider(
            thickness: 2,
            color: Colors.black,
            indent: 140,
            endIndent: 140,
          ),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: kgreenColor, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 4; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

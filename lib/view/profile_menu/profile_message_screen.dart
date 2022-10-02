import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/view/profile_menu/chat_screen.dart';
import 'package:nomadz/widgets/custom_text.dart';

class ProfileMessagePage extends StatelessWidget {
  const ProfileMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Edit",
                  style: TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 20.sp,
                    color: kgreenColor,
                  )),
            ),
          )
        ],
        title: CustomText(
          text: "Message",
          fontSize: 25.sp,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.h,
            ),
            InkWell(
              onTap: () {
                Get.to(() => chatScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80.h,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://picsum.photos/200/300'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, right: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Matilda Brown",
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: CustomText(
                                text: "No Problem",
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          print('asddasdasdasdasdasdasdasdasdasda');
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 60.0, right: 5),
                          child: Row(
                            children: [
                              CustomText(
                                text: "Monday",
                                fontSize: 14.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

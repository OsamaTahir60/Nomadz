import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/controller/dropdown_controller.dart';
import 'package:nomadz/view/profile_menu/profile_account_shopping_Screen.dart';
import 'package:nomadz/widgets/container_icon.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';
import 'package:nomadz/widgets/iconWithImage.dart';

import 'create_rental_listing.dart';
import 'profile_menu/profile_menu_page.dart';

class CreateHostAdventuresScreen extends StatelessWidget {
  DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: "Host Adventures",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0, left: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomText(
                            text: "Photos",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28.0, left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.dialog(customDialogBox(
                                      title: "Upload Profile Picture",
                                      description: "",
                                      firstButtontitle: "Gallery",
                                      firstIcon: Icons.collections,
                                      seconButtontitle: "Browse File",
                                      secondIcon:
                                          Icons.camera_enhance_rounded));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border:
                                            Border.all(color: Colors.black)),
                                    height: 60.h,
                                    width: 70.w,
                                    child: Icon(Icons.add)),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              SizedBox(
                                width: 10.h,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              SizedBox(
                                width: 10.h,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              SizedBox(
                                width: 10.h,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              SizedBox(
                                width: 10.h,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              SizedBox(
                                width: 10.h,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10.r),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/200/300"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 190.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetBuilder<DropdownController>(
                      builder: (dropdownController) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Item Details",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText:
                                  "Title (e.g. Key Largo Fly Fishing Charter)*",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 3,
                          ),
                          height: 35.h,
                          decoration: BoxDecoration(),
                          child: Container(
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton(
                                  value: dropdownController.selectedDrowpdown,
                                  focusColor: Colors.white70,
                                  underline: Container(),
                                  isExpanded: true,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  hint: const Text(
                                    'Country of Manufacturer',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  onChanged: (newValue) {
                                    dropdownController.selectedDrowpdown =
                                        newValue.toString();
                                    dropdownController.update();
                                  },

                                  // value: bookcontroller.selectedDrowpdown,
                                  items: [
                                    for (var data
                                        in dropdownController.dropdownText)
                                      DropdownMenuItem(
                                        child: Text(data,
                                            style: TextStyle(
                                                color: Colors.grey[600])),
                                        value: data,
                                      )
                                  ]),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomFormField(
                        hintText: "Description",
                      ),
                    )),
              ),
              SizedBox(
                height: 29,
              ),
              Container(
                height: 230.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomText(
                            text: "What are your rental rates?",
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        togleWithtext(text: "Hourly"),
                        togleWithtext(text: "Daily"),
                        togleWithtext(text: "Weekly"),
                        togleWithtext(text: "Monthly"),
                      ],
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0.w, top: 20.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "Location",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "Where will you meet up with the buyer?",
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                "Address (e.g. 543 Palm Blvd. Charleston, SC)*",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: "Which days and times are you",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: "available to rent out your gear?",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text:
                        "You can always change your availability or reject specific booking requests wheneveryou may be unavailable outside of your normal schedule.",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  children: [
                    togleWithtex(
                      text: "Mondays",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Tuesday",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Wednesdays",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Thursdays",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Fridays",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Saturdayss",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    togleWithtex(
                      text: "Sundays",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomLoginButton(title: " LIST NOW"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomgreyButton(title: "SAVE DRAFT"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

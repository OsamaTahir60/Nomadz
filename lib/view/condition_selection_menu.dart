import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/widgets/custom_text.dart';

class ConditonSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Color(0xffF5F5F5),
          title: CustomText(
            text: "Menu",
            color: Colors.black,
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Brand New")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Mint")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Excellent")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Very Good")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Fair")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Poor")),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: "Non-Functioning")),
              Divider(
                thickness: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

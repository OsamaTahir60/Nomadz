import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/widgets/custom_text.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.controller,
  }) : super(key: key);
  String? labelText;
  String? hintText;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CustomText(
            text: '${labelText ?? ''}',
            color: klightGreyColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(10.r),
          ),
          child: TextFormField(
            controller: controller,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Required Field';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: '${hintText ?? ''}',
              hintStyle:
                  GoogleFonts.montserrat(fontSize: 14.sp, color: Colors.black),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.r),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    required this.text,
  }) : super(key: key);
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.montserrat(
          fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}

class CustomTextWithSc extends StatelessWidget {
  CustomTextWithSc({
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    required this.text,
  }) : super(key: key);
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}

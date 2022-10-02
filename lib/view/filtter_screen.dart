import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/widgets/custom_text.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "Price range",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: FlutterSlider(
                values: [30, 420],
                touchSize: 23,
                rangeSlider: true,
                trackBar: FlutterSliderTrackBar(
                  activeTrackBar: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: kgreenColor),
                ),
                max: 500,
                min: 0,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  // _lowerValue = lowerValue;
                  // _upperValue = upperValue;
                  // setState(() {});
                },
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "Colors",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              height: 120.h,
              width: Get.width,
              child: Center(
                child: MaterialColorPicker(
                  onColorChange: (Color color) {
                    // Handle color changes
                  },
                  selectedColor: Colors.red,
                  colors: [
                    Colors.red,
                    Colors.deepOrange,
                    Colors.yellow,
                    Colors.lightGreen,
                    Colors.green,
                    Colors.blueAccent
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.r),
              )),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "Size",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 90.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    child: Center(child: Text("XS")),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: CustomText(
                      color: Colors.white,
                      text: "S",
                    )),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: CustomText(
                      color: Colors.white,
                      text: "S",
                    )),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    child: Center(child: Text("L")),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    child: Center(child: Text("XL")),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "Category",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 120.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: kgreenColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "All ",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: kgreenColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "Women",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: kgreenColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: " Men",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: kgreenColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "All ",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 40.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: kgreenColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Women",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "Brand",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              text: "adidas Originals, jack & jones, s.Oliver",
              fontSize: 15.sp,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
          Spacer(),
          Container(
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: kgreenColor),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText(
                        text: "Discard",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: kgreenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText(
                        text: "Apply",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.r),
              ))
        ]),
      ),
    );
  }
}

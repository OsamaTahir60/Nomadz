import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/controller/dropdown_controller.dart';
import 'package:nomadz/view/condition_selection_menu.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';
import 'package:nomadz/widgets/iconWithImage.dart';

import '../model/GearModel.dart';
import 'bottom_nev_bar_screen.dart';
import 'category_parent_selection.dart';
import 'profile_menu/profile_menu_page.dart';

class CreateSellGearListingPage extends StatefulWidget {
  const CreateSellGearListingPage({Key? key}) : super(key: key);

  @override
  _CreateSellGearListingPageState createState() =>
      _CreateSellGearListingPageState();
}

class _CreateSellGearListingPageState extends State<CreateSellGearListingPage> {
  DropdownController dropdownController = Get.put(DropdownController());
  TextEditingController brand = TextEditingController();
  TextEditingController model = TextEditingController();
  TextEditingController finish = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController price = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
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
                  text: "Sell Your Gear",
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
                                Get.defaultDialog(
                                    title: "",
                                    middleText: "",
                                    backgroundColor: Color(0xffF5F5F5),
                                    titleStyle: TextStyle(color: Colors.white),
                                    middleTextStyle:
                                        TextStyle(color: Colors.white),
                                    content: Column(
                                      children: [
                                        Container(
                                            height: 50.h,
                                            color: Colors.white,
                                            child: Center(
                                              child: CustomText(
                                                text: "Take Photo ",
                                              ),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            height: 50.h,
                                            color: Colors.white,
                                            child: Center(
                                              child: CustomText(
                                                text: "Choose Existing",
                                              ),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            height: 50.h,
                                            color: Colors.white,
                                            child: Center(
                                              child: CustomText(
                                                text: "Cancel",
                                              ),
                                            )),
                                      ],
                                    ));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.black)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 440.h,
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
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Brand ( e.g. Burton)*",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: brand,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Model (e.g. Flying V)*",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: model,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Finish (e.g. White/Black)",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: finish,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Year (e.g. 1995, 80s, 1990-2000)",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: year,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white70,
                              child: textandicond(
                                  icon: Icons.keyboard_arrow_down_rounded,
                                  text: "Country of Manufacturer"),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => category_parent_selectionScreen());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white70,
                              child: textandicond(
                                  icon: Icons.keyboard_arrow_down_rounded,
                                  text: "Category*"),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => ConditonSelection());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white70,
                              child: textandicond(
                                  icon: Icons.keyboard_arrow_down_rounded,
                                  text: "Condition"),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomFormField(
                      controller: description,
                      hintText: "Description",
                    ),
                  )),
            ),
            SizedBox(
              height: 29,
            ),
            Container(
              height: 190.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomFormField(
                          controller: price,
                          hintText: "price",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Price",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_sharp),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Accepts Offer",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Transform.scale(
                                scale: 1.5,
                                child: Switch(
                                  onChanged: (v) {},
                                  value: true,
                                  activeColor: kgreenColor,
                                  activeTrackColor: kgreenColor,
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 18.0.w, top: 20.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "Shopping",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 280.h,
                          height: 20.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Shopping",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Transform.scale(
                              scale: 1.5,
                              child: Switch(
                                onChanged: (v) {},
                                value: true,
                                activeColor: kgreenColor,
                                activeTrackColor: kgreenColor,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomText(
                            text: "Local pickup",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.0.w),
                          child: Transform.scale(
                              scale: 1.5,
                              child: Switch(
                                onChanged: (v) {},
                                value: true,
                                activeColor: kgreenColor,
                                activeTrackColor: kgreenColor,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 3,
              ),
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
                        for (var data in dropdownController.dropdownText)
                          DropdownMenuItem(
                            child: Text(data,
                                style: TextStyle(color: Colors.grey[600])),
                            value: data,
                          )
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 3,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white70,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Shipping Rates",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text:
                                  "Enter shipping rates for the regions below. Buyers onlysee listings that have a rate listed for their location.",
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 20.h,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Shopping",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 20.h,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Shopping",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.add),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomText(
                                  text: "Add New Shipping Region",
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 3,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white70,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Return Policy",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: "Edit Shop Policy",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomText(
                                  text: "Use Shop Policy",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomText(
                                  text: "Sell item \"As-Described",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Items sold \"As-Described"
                                  "are excluded from your shop's return policy",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: CustomLoginButton(
                  title: " LIST NOW",
                  onPress: () {
                    if (brand.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Brand Cannot Be Empty");
                    } else if (model.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Model Cannot Be Empty");
                    } else if (finish.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Finish Cannot Be Empty");
                    } else if (year.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Year Cannot Be Empty");
                    } else if (description.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Description Cannot Be Empty");
                    } else if (price.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Price Cannot Be Empty");
                    } else {
                      postDetailsToFirestore();
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: CustomgreyButton(title: "SAVE DRAFT",
                  onPress: () {
                    if (brand.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Brand Cannot Be Empty");
                    } else if (model.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Model Cannot Be Empty");
                    } else if (finish.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Finish Cannot Be Empty");
                    } else if (year.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Year Cannot Be Empty");
                    } else if (description.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Description Cannot Be Empty");
                    } else if (price.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Price Cannot Be Empty");
                    } else {
                      SavedDraft();
                    }
              }),
            )
          ],
        ),
      ),
    );
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    GearModel gearModel = GearModel();

    // writing all the values
    gearModel.Brand = brand.text;
    gearModel.Model = model.text;
    gearModel.Finish = finish.text;
    gearModel.Year = year.text;
    gearModel.Description = description.text;
    gearModel.Price = price.text;

    await firebaseFirestore
        .collection("Gear")
        .doc(user?.uid)
        .set(gearModel.toMap());
    Fluttertoast.showToast(msg: "Gear Listed Successful:) ");
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomNavBar()));
  }

  SavedDraft() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    GearModel gearModel = GearModel();

    // writing all the values
    gearModel.Brand = brand.text;
    gearModel.Model = model.text;
    gearModel.Finish = finish.text;
    gearModel.Year = year.text;
    gearModel.Description = description.text;
    gearModel.Price = price.text;

    await firebaseFirestore
        .collection("Saved Draft")
        .doc(user?.uid)
        .set(gearModel.toMap());
    Fluttertoast.showToast(msg: "Draft Saved Successful:)");
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomNavBar()));
  }
}

Widget customDialogBox({
  title,
  description,
  firstOntab,
  secondOntab,
  firstButtontitle,
  seconButtontitle,
  firstIcon,
  secondIcon,
}) {
  return Center(
    child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        height: 315.h,
        width: 315.h,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(2.r))),
              child: CustomText(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20.sp,
                text: title,

                // "Upload Profile Picture"
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomText(text: description),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: iconwithtext(
                    ontab: firstOntab,
                    text: firstButtontitle,
                    icon: firstIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: iconwithtext(
                      ontab: secondOntab,
                      text: seconButtontitle,
                      icon: secondIcon),
                ),
              ],
            ),
          ],
        )),
  );
}

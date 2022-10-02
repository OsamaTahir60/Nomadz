import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/controller/dropdown_controller.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import '../model/RentYourGearModel.dart';
import 'bottom_nev_bar_screen.dart';
import 'category_parent_selection.dart';
import 'condition_selection_menu.dart';
import 'profile_menu/profile_menu_page.dart';
class CreateRentalListingScreen extends StatefulWidget {
  const CreateRentalListingScreen({Key? key}) : super(key: key);

  @override
  _CreateRentalListingScreenState createState() => _CreateRentalListingScreenState();
}
class _CreateRentalListingScreenState extends State<CreateRentalListingScreen> {
  DropdownController dropdownController = Get.put(DropdownController());
  TextEditingController brand = TextEditingController();
  TextEditingController model = TextEditingController();
  TextEditingController finish = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController priceWeekly = TextEditingController();
  TextEditingController priceDaily = TextEditingController();
  TextEditingController priceMonthly = TextEditingController();
  TextEditingController priceHourly = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  bool isSwitchedmon = false;
  bool isSwitchedtue = false;
  bool isSwitchedwed = false;
  bool isSwitchedthu = false;
  bool isSwitchedfri = false;
  bool isSwitchedsat = false;
  bool isSwitchedsun = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {

    if(isSwitchedmon == false)
    {
      setState(() {
        isSwitchedmon = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else if(isSwitchedtue == false) {
      setState(() {
        isSwitchedtue = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
    else if(isSwitchedwed == false) {
      setState(() {
        isSwitchedwed = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }else if(isSwitchedthu == false) {
      setState(() {
        isSwitchedthu = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }else if(isSwitchedfri == false) {
      setState(() {
        isSwitchedfri = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }else if(isSwitchedsat == false) {
      setState(() {
        isSwitchedsat = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }else if(isSwitchedsun == false) {
      setState(() {
        isSwitchedsun = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Color(0xffF5F5F5),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: "Rent Your Gear",
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
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
                height: 230.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomText(
                            text: "What are your rental rates?",
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(
                            child: Text("Daily",style: TextStyle(fontSize: 20.0,),),
                          ),
                            Container(
                              width: 55.0,
                              child: CustomFormField(
                                controller: priceDaily,
                                hintText: "price",
                              ),
                            )
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Weekly",style: TextStyle(fontSize: 20.0,),),
                            ),
                            Container(
                              width: 55.0,
                              child: CustomFormField(
                                controller: priceWeekly,
                                hintText: "price",
                              ),
                            )
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Monthly",style: TextStyle(fontSize: 20.0,),),
                            ),
                            Container(
                              width: 55.0,
                              child: CustomFormField(
                                controller: priceMonthly,
                                hintText: "price",
                              ),
                            )
                          ],),

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
                          text: "Delivery Options",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Local Meetup",
                              fontSize: 15.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
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
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Local Pickup",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0.w),
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
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedmon,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Monday', style: TextStyle(fontSize: 20),),
                      ],
                    ),

                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedtue,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Tuesday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedwed,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Wednesday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedthu,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Thursday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedfri,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Friday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedsat,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Saturday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitchedsun,
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        ),
                        Text('Sunday', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomLoginButton(title: " LIST NOW",onPress: (){
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
                  } else if (priceDaily.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Price Daily Cannot Be Empty or provide zero");
                  }
                  else if (priceWeekly.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Price Weekly Cannot Be Empty or provide zero");
                  }
                  else if (priceMonthly.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Price Monthly Cannot Be Empty or provide zero");
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
                      } else if (priceDaily.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Price Daily Cannot Be Empty or provide zero");
                      }
                      else if (priceWeekly.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Price Weekly Cannot Be Empty or provide zero");
                      }
                      else if (priceMonthly.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Price Monthly Cannot Be Empty or provide zero");
                      }else {
                        SavedDraft();
                      }
                    }),),

            ],
          ),
        ),
      ),
    );
  }
  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    RentYourGearModel gearModel = RentYourGearModel();

    // writing all the values
    gearModel.Brand = brand.text;
    gearModel.Model = model.text;
    gearModel.Finish = finish.text;
    gearModel.Year = year.text;
    gearModel.Description = description.text;
    gearModel.PriceDaily = priceDaily.text;
    gearModel.PriceWeekly = priceWeekly.text;
    gearModel.PriceMonthly = priceMonthly.text;

    await firebaseFirestore
        .collection("Rent Your Gear")
        .doc(user?.uid)
        .set(gearModel.toMap());
    Fluttertoast.showToast(msg: "Gear Rented Successful:) ");
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomNavBar()));
  }
  SavedDraft() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    RentYourGearModel gearModel = RentYourGearModel();

    // writing all the values
    gearModel.Brand = brand.text;
    gearModel.Model = model.text;
    gearModel.Finish = finish.text;
    gearModel.Year = year.text;
    gearModel.Description = description.text;
    gearModel.PriceDaily = priceDaily.text;
    gearModel.PriceWeekly = priceWeekly.text;
    gearModel.PriceMonthly = priceMonthly.text;

    await firebaseFirestore
        .collection("Rent Your Gear Saved Draft")
        .doc(user?.uid)
        .set(gearModel.toMap());
    Fluttertoast.showToast(msg: "Draft Rent Draft Successful:)");
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomNavBar()));
  }

}


class togleWithtext extends StatelessWidget {
  String text;
  togleWithtext({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        Align(
          alignment: Alignment.bottomLeft,
          child: CustomText(
            text: text,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Align(
          alignment: Alignment.bottomRight,
          child: CustomText(
            text: "\$ 0",
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class togleWithtex extends StatelessWidget {
  String text;
  togleWithtex({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        SizedBox(
          width: 10.h,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: CustomText(
            text: text,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

Widget customDialogBox(
    {title,
    description,
    firstOntab,
    secondOntab,
    firstButtontitle,
    seconButtontitle,
    firstIcon,
    secondIcon}) {
  return Center(
    child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        height: 315.h,
        width: 315.h,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: CustomText(
                  text: "Take Photo", color: Colors.black, fontSize: 25.sp,

                  // "Upload Profile Picture"
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              height: 60.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: CustomText(
                  text: "Choose Existing",
                  fontSize: 25.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 60.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CustomText(
                    text: "Cancel",
                    fontSize: 25.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        )),
  );
}

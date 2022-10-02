import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/controller/dropdown_controller.dart';
import 'package:nomadz/model/RentYourGearModel.dart';
import 'package:nomadz/view/order_screen.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

import '../constants.dart';
import '../widgets/container_icon.dart';
import 'calender_date.dart';
import 'product_For_sale_view.dart';
class ProductAdventureViewPage extends StatefulWidget {
  const ProductAdventureViewPage({Key? key}) : super(key: key);

  @override
  _ProductAdventureViewPageState createState() => _ProductAdventureViewPageState();
}

class _ProductAdventureViewPageState extends State<ProductAdventureViewPage> {
  DropdownController dropdownController = Get.put(DropdownController());

  FirebaseAuth _auth = FirebaseAuth.instance;
  String Brand = "",Model="",Finish="",Year="",Description="",PriceDaily="",PriceWeekly="",PriceMonthly="";

  User? user = FirebaseAuth.instance.currentUser;
  RentYourGearModel loggedInUser = RentYourGearModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("Rent Your Gear")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = RentYourGearModel.fromMap(value.data());
      Brand = value.data()!['Brand'];
      Model = value.data()!['Model'];
      Finish = value.data()!['Finish'];
      Year = value.data()!['Year'];
      Description = value.data()!['Description'];
      PriceDaily = value.data()!['PriceDaily'];
      PriceWeekly = value.data()!['PriceWeekly'];
      PriceMonthly = value.data()!['PriceMonthly'];
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
          title: CustomText(
            text: "Host Adventures",
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Color(0xffF5F5F5),
          actions: [
            Icon(
              Icons.upload_file,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.h,
            ),
            InkWell(
              onTap: () {
                Get.to(() => OrderPurchasesScreen());
              },
              child: Icon(
                Icons.shopping_cart_checkout,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ]),
      body: Brand != ""?SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 320.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 21.0, bottom: 21),
                    child: Container(
                      height: 190.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),

                          // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          image: DecorationImage(
                              image:
                              NetworkImage('https://picsum.photos/200/300'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
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
                            onTap: () {

                            },
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
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 320.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: CustomText(
                                text:
                                Brand + Model,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.save_alt_rounded)
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "Hourly"),
                            Container(
                              height: 20.h,
                              width: 3.w,
                              color: Colors.black,
                            ),
                            CustomText(text: "Daily"),
                            Container(
                              height: 20.h,
                              width: 3.w,
                              color: Colors.black,
                            ),
                            CustomText(text: "Weekly"),
                            Container(
                              height: 20.h,
                              width: 3.w,
                              color: Colors.black,
                            ),
                            CustomText(text: "Monthly"),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "\$0"),
                            CustomText(text: "\$"+PriceDaily),
                            CustomText(text: "\$"+PriceWeekly),
                            CustomText(text: "\$"+PriceMonthly),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        CustomLoginButton(
                            title: "Reserve",
                            onPress: () {

                              // Get.to(() => CalendarScreen());
                            }),
                        CustomgreyButton(title: "Message Seller")
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: 130.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text: "DESCRIPTION")),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text: "Body Material: " + Finish)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text:
                                "Neck Material: " + Brand)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text:
                                "Fingerboard Material: " + Year)),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 90.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Icon(Icons.health_and_safety_outlined),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomText(
                                  text: "Buy with Confidence",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  text:
                                  "Nomadz Protection has you covered. We provide a safe"),
                              CustomText(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  text:
                                  "secure community for finding the gear and trips you want."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 90.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          size: 70.r,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomText(
                                  text: "DEVA Unltd.",
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: RatingBar.builder(
                                      itemSize: 10,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                  CustomText(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      text: "(3)"),
                                ],
                              ),
                              CustomText(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  text: "Bogota, Colombia"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  )),
              SizedBox(
                height: 29,
              ),
              Container(
                height: 400.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "Details",
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
                              "This item is sold As-Described. It cannot be",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text:
                              "returned unless it arrives in a condition different",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                              text: "from how it was described or photographed",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  CustomTextWithSc(
                                    text: "Make",
                                    color: Colors.grey,
                                  ),
                                  CustomTextWithSc(
                                    text: "Model",
                                    color: Colors.grey,
                                  ),
                                  CustomTextWithSc(
                                    text: "Finish",
                                    color: Colors.grey,
                                  ),
                                  CustomTextWithSc(
                                    text: "Condition",
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWithSc(text: Brand),
                                  CustomTextWithSc(
                                      color: Colors.grey,
                                      text: Model),
                                  CustomTextWithSc(
                                    text: Finish,
                                    color: Colors.grey,
                                  ),
                                  CustomTextWithSc(
                                    text: "Excellent",
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: CustomText(
                                text: "Listed 2 hours ago",
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.star),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CustomText(text: "1 Watcher"),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Icon(Icons.remove_red_eye),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CustomText(text: "60 Watcher"),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.messenger_rounded,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CustomText(text: "0 offer"),
                                ],
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          CustomText(text: "Accepted Payment Methods"),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Atmcard(
                                url: "assets/cd.png",
                                Name: "Credit Card",
                              ),
                              Atmcard(
                                url: "assets/gf.png",
                                Name: "Credit Card",
                              ),
                              Atmcard(
                                url: "assets/apA.png",
                                Name: "Credit Card",
                              ),
                              Atmcard(
                                url: "assets/Pl.png",
                                Name: "Credit Card",
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: "Similar Products",
                    fontWeight: FontWeight.bold,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: "Recently Viewed Listings",
                    fontWeight: FontWeight.bold,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SimilarProductCard(
                        Url: 'https://picsum.photos/200/300',
                        name1: "    Fender American\nPerformer Stratocaster",
                        name2: "163 items from \$975",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ): Column(
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ContainerIcon(
              imageUrl: "assets/saveicon.png",
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "YOU HAVEN'T SAVED",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "Any Host Adventures",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0, right: 15),
          //   child: CustomLoginButton(title: " Recently Viewed"),
          // ),
          SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0, right: 15),
          //   child: CustomLoginButton(
          //       title: "Start Searching",
          //       onPress: () {
          //         Get.to(SaveListScreen());
          //       }),
          // ),
          // SizedBox(
          //   height: 15.h,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Align(
          //     alignment: Alignment.bottomLeft,
          //     child: CustomText(
          //       text: "CATEGORIES",
          //       fontSize: 12.sp,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 15.h,
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   reverse: false,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //       SizedBox(
          //         width: 10.w,
          //       ),
          //       RowImageWithtext(
          //         imgUrl: 'https://picsum.photos/200/300',
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: Container(
          //     height: 95.h,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(0.0.r),
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black.withOpacity(0.5),
          //           blurRadius: 2.0,
          //           spreadRadius: 0.0,
          //           offset: Offset(
          //             2.0,
          //             4.0,
          //           ), // shadow direction: bottom right
          //         )
          //       ],
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(6),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(18.0),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 CustomText(
          //                   text: "Support Local Sellers",
          //                   fontSize: 12.sp,
          //                   fontWeight: FontWeight.w600,
          //                 ),
          //                 CustomText(
          //                   text: "Browse listings from sellers near you.",
          //                   fontSize: 12.sp,
          //                   fontWeight: FontWeight.w300,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           ContainerIcon(imageUrl: "assets/location1.png")
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )
    );
  }
}

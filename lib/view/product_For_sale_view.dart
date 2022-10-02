import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/controller/dropdown_controller.dart';
import 'package:nomadz/view/cart_screen.dart';
import 'package:nomadz/view/profile_menu/profile_account_shopping_Screen.dart';
import 'package:nomadz/widgets/container_icon.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';
import 'package:nomadz/widgets/iconWithImage.dart';

import 'profile_menu/profile_menu_page.dart';

class ProductForSaleViewPage extends StatelessWidget {
  DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          actions: [
            Icon(
              Icons.upload_file,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.h,
            ),
            Icon(
              Icons.shopping_cart_checkout,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ]),
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 330.h,
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
                    child: GetBuilder<DropdownController>(
                        builder: (dropdownController) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: CustomText(
                                    text:
                                        "[BRAND + MODEL OF LISTING \nGOES HERE]",
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
                              height: 0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(text: "\$S"),
                                CustomText(text: "\$20"),
                                CustomText(text: "\$40"),
                                CustomText(text: "\$50"),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: CustomText(
                                text: "\$900 + \$100 Shipping",
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            CustomLoginButton(
                                title: "Add to Cart",
                                onPress: () {
                                  Get.to(() => CartScreen());
                                }),
                            CustomgreyButton(title: "Message Seller")
                          ],
                        ),
                      );
                    }),
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
                                text: "DESCRIPTION Details go here: ")),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text: "Body Material: Solid Alder Body")),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text:
                                    "Neck Material: One piece maple neck with walnut skunk")),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomText(
                                text:
                                    "Fingerboard Material: Rosewood with dot inlavs")),
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
                                  CustomTextWithSc(text: "Fender"),
                                  CustomTextWithSc(
                                      color: Colors.grey,
                                      text: "Stratocaster American Standard"),
                                  CustomTextWithSc(
                                    text: "Sunburst",
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
      ),
    );
  }
}

class SimilarProductCard extends StatelessWidget {
  String Url;
  String name1;
  String name2;

  SimilarProductCard({
    required this.Url,
    required this.name1,
    required this.name2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          width: 150.w,
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
                      image: NetworkImage(Url
                          // 'https://picsum.photos/200/300'
                          ),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
        CustomText(text: name1),
        SizedBox(
          height: 20.h,
        ),
        CustomText(text: name2)
      ],
    );
  }
}

class Atmcard extends StatelessWidget {
  String url;
  String Name;
  Atmcard({required this.url, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () {},
            child: Container(
              height: 30.h,
              width: 50.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: ExactAssetImage(url), fit: BoxFit.fitHeight),
              ),
            )),
        CustomText(text: Name)
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
  return Scaffold(
    body: MaterialApp(
      home: Container(
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
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
    ),
  );
}

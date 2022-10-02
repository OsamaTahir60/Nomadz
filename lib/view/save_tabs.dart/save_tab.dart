import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/model/GearModel.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';
import 'package:nomadz/view/home_exploring_screen.dart';
import 'package:nomadz/view/save_tabs.dart/save_llst_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../../widgets/container_icon.dart';
import '../../widgets/custon_logib_button.dart';

class SaveTabs extends StatefulWidget {
  const SaveTabs({Key? key}) : super(key: key);

  @override
  _SaveTabsState createState() => _SaveTabsState();
}
class _SaveTabsState extends State<SaveTabs> {
   int num = 0;
   String Brand = "",Model = "",Finish = "",Year = "",Description = "",Price = "";

  User? user = FirebaseAuth.instance.currentUser;
  GearModel loggedInUser = GearModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("Saved Draft")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = GearModel.fromMap(value.data());
      Brand = value.data()!['Brand'];
      Model = value.data()!['Model'];
      Finish = value.data()!['Finish'];
      Year = value.data()!['Year'];
      Description = value.data()!['Description'];
      Price = value.data()!['Price'];
      num = Finish as int;
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText(
          text: "Saved",
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Brand== "" ? Column(
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
              text: "ANY GEAR",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text:
              "Add items to your Saved list in order to receive\nuseful updates, such as price drops and free\nshipping.",
              fontSize: 13.sp,
              fontWeight: FontWeight.w200,
              color: klightGreyColor,
            ),
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
      ):GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            StarCard(
                Brand: Brand,
                Description: Description,
                Model: Model,
                Price: Price,
                Year:Year,
                Finish:Finish
            ),

          ]
      )
    );
  }
}
class StarCard extends StatelessWidget {
  String Brand;
  String Description;
  String Finish;
  String Model;
  String Price;
  String Year;

  StarCard(
      {required this.Brand,
        required this.Description,
        required this.Finish,
        required this.Model,
        required this.Price,
        required this.Year
      });
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Container(
              height: 190.h,
              width: 160.h,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 21.0, bottom: 21),
                child: Container(
                  height: 190.h,
                  width: 150.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),

                      // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      image: DecorationImage(
                          image: NetworkImage('https://picsum.photos/200/300'), fit: BoxFit.fill)),
                ),
              ),
            ),
            //https://picsum.photos/200/300")
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: RatingBar.builder(
                      itemSize: 20,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
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
                    text: "(3)",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Icon(
                    Icons.save,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: Brand,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: klightGreyColor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: Description,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: Price,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}



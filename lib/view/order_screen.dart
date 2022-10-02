import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';
import 'package:nomadz/view/filtter_screen.dart';
import 'package:nomadz/view/home_exploring_screen.dart';
import 'package:nomadz/view/order_detail_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../../widgets/bottom_sheet_screen.dart';
import '../../widgets/container_icon.dart';
import '../../widgets/custon_logib_button.dart';

class OrderPurchasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Align(
          alignment: Alignment.bottomLeft,
          child: CustomText(
            text: "My Purchases".toUpperCase(),
            fontSize: 25.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                child: Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerText(
                        title: "Delivered",
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      ContainerText(
                        title: "Processing",
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      ContainerText(
                        title: " Cancelled",
                      ),
                      SizedBox(
                        width: 20.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              // ,ResponsiveGridCol(
              //     xs: 6,
              //     md: 3,
              //     child: Container(
              //       height: 100,
              //       alignment: Alignment(0, 0),
              //       color: Colors.orange,
              //       child: Text("xs : 6 \r\nmd : 3"),
              //     ),
              //   ),

              InkWell(
                onTap: () {
                  // Get.to(()=>)
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 25.h,
                  ),
                  width: 413.w,
                  height: 185.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.w,
                        offset: Offset(0.w, 10.w),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Order No: NOM7031  ',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                          CustomText(
                            text: 'May 12, 2021',
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Tracking number:',
                            fontSize: 14.sp,
                          ),
                          CustomText(
                            text: 'IW347545455',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Quantity: 3 ',
                            fontSize: 14.sp,
                          ),
                          CustomText(
                            text: 'Total Amount:  \$114',
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => OrderDetailScreen());
                            },
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: "Details"),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          CustomText(
                            text: 'Delivered',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     child: GridView.custom(
              //       shrinkWrap: true,
              //       gridDelegate: SliverWovenGridDelegate.count(
              //         crossAxisCount: 2,
              //         mainAxisSpacing: 2,
              //         crossAxisSpacing: 2,
              //         tileBottomSpace: 120,
              //         pattern: [
              //           WovenGridTile(1),
              //           WovenGridTile(
              //             2 / 2,
              //             // crossAxisRatio: 0.9,
              //             alignment: AlignmentDirectional.bottomEnd,
              //           ),
              //         ],
              //       ),
              //       childrenDelegate: SliverChildBuilderDelegate(
              //         (context, index) => Wrap(children: [

              //         ]),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StarCard extends StatelessWidget {
  String companyName;
  String Name;
  String prize;
  String imageurl;
  StarCard(
      {required this.Name,
      required this.companyName,
      required this.prize,
      required this.imageurl});
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
                          image: NetworkImage(imageurl), fit: BoxFit.fill)),
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
                      text: companyName,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: klightGreyColor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: Name,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "\$15",
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

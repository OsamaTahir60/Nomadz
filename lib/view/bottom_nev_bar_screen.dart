import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/controller/bottom_nav_controller.dart';

//final TopicController topicController = Get.put(TopicController());

class BottomNavBar extends StatelessWidget {
  final BottomNavController mainController =
      Get.put(BottomNavController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (mainController) {
      return Scaffold(
        backgroundColor: Colors.white10,
        body: Container(
            child: mainController.allPagesScreen[mainController.currentIndex]),

        //  allPageScreen[currentPage]

        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.r),
              // color: Colors.white,
            ),
            child: GNav(
                padding: EdgeInsets.only(
                    left: 24.w, right: 15.w, top: 18.h, bottom: 20.h),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                tabBackgroundColor: kgreenColor,
                onTabChange: (index) {
                  mainController.currentIndex = index;
                  mainController.updatePage(index);
                },
                selectedIndex: mainController.currentIndex,
                // iconSize: 25,
                tabs: [
                  GButton(
                    icon: Icons.explore,
                  ),
                  GButton(
                    icon: Icons.bookmark,
                  ),
                  GButton(icon: Icons.camera_alt_outlined),
                  GButton(icon: Icons.newspaper_sharp),
                  GButton(
                    icon: Icons.person,
                  )
                ])),
      );
    });
  }
}

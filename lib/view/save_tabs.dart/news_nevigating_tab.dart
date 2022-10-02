import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/widgets/custom_text.dart';

class NewsNevigationTab extends StatelessWidget {
  const NewsNevigationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Latest News",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
            SizedBox(
              height: 10.h,
            ),
            latestNewsCard(
              endtext: "Conservation",
              heading: "letter to the Corps-o...",
              imageUrl: "https://picsum.photos/200/300",
              subtitle:
                  "The outdoor industry ralliestogether \nto demand true balance in \nthe new Lake Ok...",
            ),
          ],
        ),
      ),
    );
  }
}

class latestNewsCard extends StatelessWidget {
  String imageUrl;
  String heading;
  String subtitle;
  String endtext;

  latestNewsCard(
      {required this.endtext,
      required this.heading,
      required this.imageUrl,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.fill),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: heading,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: subtitle,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
                CustomText(
                  text: endtext,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

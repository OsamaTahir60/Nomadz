import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/fishing_categories.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class category_parent_selectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Color(0xffF5F5F5),
          title: CustomText(
            text: "Select a Category",
            color: Colors.black,
          )),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => FishingCategoriesScreen());
                  },
                  child: textandwithoutpaddingicon(
                      icon: Icons.arrow_forward_ios_outlined, text: "Fishing"),
                ),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Fly Fishing"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Hunting"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Water Sports"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Snow Sports"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Mountain"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Adventures"),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

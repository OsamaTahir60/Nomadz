import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/view/selected_cotegory3.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class FishingCategoriesScreen extends StatelessWidget {
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
            text: "Fishing Categories",
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
                    Get.to(Get.to(SelectedCotegory3Screen()));
                  },
                  child: textandwithoutpaddingicon(
                      icon: Icons.arrow_forward_ios_outlined,
                      text: "Rod & Reels Packages"),
                ),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Rods"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Reels"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Terminal Tackle"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Lures"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined, text: "Boats"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Bow Fishing"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Fishing Acessories"),
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

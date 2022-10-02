import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class SelectedCotegory3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Salt Water Rods"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Fresh Water Rods"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Spinning Rods"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Casting Roads"),
                Divider(
                  thickness: 2,
                ),
                textandwithoutpaddingicon(
                    icon: Icons.arrow_forward_ios_outlined,
                    text: "Species-Specific"),
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

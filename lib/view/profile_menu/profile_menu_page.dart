
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/regisrtation_pages/login_page.dart';
import 'package:nomadz/regisrtation_pages/setting_screen.dart';

import 'package:nomadz/view/Create_Sell_Gear_listing.dart';
import 'package:nomadz/view/Product_adventure_view.dart';
import 'package:nomadz/view/create_rental_listing.dart';
import 'package:nomadz/view/order_screen.dart';
import 'package:nomadz/view/profile_menu/profile_account_shopping_Screen.dart';
import 'package:nomadz/view/profile_menu/profile_message_screen.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:image_picker/image_picker.dart';
import '../../model/user_model.dart';
import '../checkout_screens/payment_method_screen.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
class ProfileMenuPage extends StatefulWidget {
  const ProfileMenuPage({Key? key}) : super(key: key);

  @override
  _ProfileMenuPageState createState() => _ProfileMenuPageState();
}


class _ProfileMenuPageState extends State<ProfileMenuPage>{

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  String Name="",Email="";
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      Name = value.data()!['UserName'];
      Email = value.data()!['Email'];

      setState(() {});
    });
  }
  File? image;


 Future pickImage({required ImageSource source}) async {
   try {
     final image = await ImagePicker().pickImage( source: source);
     if (image == null) {
       return;
     }
     else {
       final ImageTemporary = File(image.path);
       setState(() {
         this.image = ImageTemporary;
         uploadFile();
       }
       );
     }
   }
   on PlatformException catch (e) {
     print("failed to picl");
   }
 }
 getProfileImageGmail(){
   if(_auth.currentUser?.photoURL!=Null){
     return image= Image.network(user!.photoURL.toString()) as File?;
   }
 }
  Future uploadFile() async {
    if (image == null) return;
    final fileName = (image!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(image!);
    } catch (e) {
      print('error occured');
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Profile",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 100.w,
                          height: 100.h,
                          child: InkWell(
                            onTap: (){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Expanded(
                                    child: AlertDialog(
                                      actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            FlatButton(
                                              textColor: Colors.black,
                                              onPressed: () => pickImage(source: ImageSource.gallery),
                                              child: Text('Pick Gallery'),
                                            ),
                                            FlatButton(
                                              textColor: Colors.black,
                                              onPressed: () => pickImage(source: ImageSource.camera),
                                              child: Text('Pick Camera'),

                                            ),

                                          ],
                                        )

                                      ],
                                    ),

                                  );
                                },
                              );
                            },
                            child: CircleAvatar(
                                radius: 50,
                                child:image != null? ClipOval(
                                  child: Image.file(image!,width: 170,height: 170,fit: BoxFit.cover,),
                                ):const Icon(Icons.camera_enhance)
                              // child: Icon(Icons.camera_enhance),
                            ),
                          )
                      ),
                      image!=null? FlatButton(
                        textColor: Colors.black,
                        onPressed: () {

                        },
                        child: Text('Upload Image'),
                      ):Text('s',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(
                    width: 10.5.w,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Get.to(() => UserSettingScreen());
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text('$Name',
                              // registrationAuthController.loggedInUser.firstName,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: '$Email',
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 420.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "Selling",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => OrderPurchasesScreen());
                      },
                      child: textandicon(
                        text: "orders",
                        icon: Icons.shopping_cart_checkout_outlined,
                      ),
                    ),
                    textandicon(
                      text: "Received Offers",
                      icon: Icons.arrow_downward_sharp,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => CreateSellGearListingPage());
                        },
                        child: textandtext(
                            text: "Gear Listings", lasttext: "(0)")),
                    InkWell(
                        onTap: () {
                          Get.to(() => ProductAdventureViewPage());
                        },
                        child: textandtext(
                            text: "Adventure Listings", lasttext: "(0)")),
                    InkWell(
                        onTap: () {
                          Get.to(() => CreateRentalListingScreen());
                        },
                        child: textandtext(
                            text: "Rental Listings", lasttext: "(0)")),
                    textandtext(text: "Drafts", lasttext: "(0)"),
                    InkWell(
                        onTap: () {
                          Get.to(() => ShoppingSettingScreen());
                        },
                        child: textandicon(
                            text: "Shop Settings", icon: Icons.home_filled)),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "My Account",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => ProfileMessagePage());
                          // Get.to(() => ProfileMessagePage());
                        },
                        child:
                        textandicon(text: "Messages", icon: Icons.message)),
                    textandicon(
                      text: "Purchases",
                      icon: Icons.shopping_cart_checkout_outlined,
                    ),
                    textandicon(
                      text: "Sent Offers",
                      icon: Icons.arrow_upward_rounded,
                    ),
                    textandicon(
                      text: "Address Book",
                      icon: Icons.location_on,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => PaymentMethodScreen());
                      },
                      child: textandicon(
                        text: "Payment Methods",
                        icon: Icons.payment,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => SettingScreen());
                        },
                        child: textandicon(
                            text: "Settings", icon: Icons.settings)),
                    textandicon(text: "Help Center", icon: Icons.help),
                  ],
                ),
              ),
            ),
            Container(
              height: 90.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Get.to(() => LogInScreen());
                  },
                  child: textandicon(text: "Logout", icon: Icons.logout)),
            )
          ],
        ),
      ),
    );
  }
}



class textandicon extends StatelessWidget {
  String text;
  IconData icon;
  textandicon({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          Icon(
            icon,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class textandicond extends StatelessWidget {
  String text;
  IconData icon;
  textandicond({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500],
          ),
          Icon(
            icon,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class textandwithoutpaddingicon extends StatelessWidget {
  String text;
  IconData icon;
  textandwithoutpaddingicon({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        Icon(
          icon,
          color: Colors.black,
          size: 15,
        )
      ],
    );
  }

}

class textandtext extends StatelessWidget {
  String text;
  String lasttext;

  textandtext({required this.lasttext, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          CustomText(
            text: lasttext,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }

}

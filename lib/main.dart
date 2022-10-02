import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'regisrtation_pages/on_bording_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = 'pk_test_ZXeHRv89zCGGGzYfM3LuY3yq00F7Cs6fRL';

  await Stripe.instance.applySettings();
  await Firebase.initializeApp();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // builder: EasyLoading.init(),
              home: IntroductionPage(),
            ));
  }
}

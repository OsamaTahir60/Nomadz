
// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>  IntroductionPage()
              // (context) => DoctorSignIn()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: false,
          bottom: false,
          left: false,
          right: false,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.4,0.8],
                colors: [
                  Color(0xffC1272D),
                  Color(0xff651C69),
                  Color(0xff28225E),
                ],
              ),
            ),
            child:Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 270.0,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Center(child:
                      Text("Note:",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.red,fontSize: 60.0,fontWeight: FontWeight.bold),)
                      )
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Center(child:
                      Text("Only for Testing Purpose Payment Not Clear Yet",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold),)
                      )
                  ),
                ],
              ),
            )
          )
      ),
    );
  }

}

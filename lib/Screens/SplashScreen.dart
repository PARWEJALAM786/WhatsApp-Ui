import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OnBoardingScreen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }

}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen(),));

    });


  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(

    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/whatsapp 1.png'),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomText(text: 'WhatsApp', height: 18,fontweight:FontWeight.bold)

        ],
      ),
    ),

   );
  }

}
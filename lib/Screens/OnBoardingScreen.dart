import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/LoginScreen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Center(
     child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset('assets/images/image 1.png'),
         SizedBox(height: 20),

         UiHelper.CustomText(
             text: 'Welcome To WhatsApp',
             height: 20,
             color: Color(0XFF000000)),

         SizedBox(height: 20),
         
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             UiHelper.CustomText(text: 'Read out', height: 14,color: Colors.black),
             UiHelper.CustomText(text: ' Privacy Policy. ', height: 14,color: Color(0XFF0C42CC)),
             UiHelper.CustomText(text: 'Tap “Agree and continue” ', height: 14,color: Colors.black),
           ],
         ),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             UiHelper.CustomText(text: ' to accept the ', height: 14,color: Colors.black),
             SizedBox(height: 5),
             UiHelper.CustomText(text: ' Teams of Service. ', height: 14,color: Color(0XFF0C42CC)
             ),
           ],
         ),

       ],
     ),
   ),
   floatingActionButton:
   UiHelper.CustomButton(callback: (){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

   }, buttonname: "Agree and continue"),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 );
  }
  
}
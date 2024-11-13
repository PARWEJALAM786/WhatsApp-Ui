import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Home%20Screen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController =TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 80 ),
            Center(
              child: UiHelper.CustomText(text: 'Profile info',
                  height: 25,color: Color(0XFF00A884),fontweight: FontWeight.bold),
            ),
          SizedBox(height: 50 ),
            UiHelper.CustomText(text: 'Please provide your name and an optional', height: 18),
          UiHelper.CustomText(text: 'profile photo', height: 18),

          SizedBox(height: 30,),
         GestureDetector(
           onTap: (){
             _openBottom(context);
           },
           child: pickedImage==null? CircleAvatar(
             radius:80,backgroundColor: Color(0XFFD9D9D9),
             child: Image.asset("assets/images/photo-camera 1.png",height:50,
                 fit:BoxFit.cover),

           ):CircleAvatar(
             radius: 80,
             backgroundImage: FileImage(pickedImage!),
           ),

         ),
         SizedBox(height: 30,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width:300,
                  child: TextField(style: TextStyle(fontSize: 21),
                decoration: InputDecoration(
                  hintText: "Type your name here",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.green)),
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.green
                    )
                )
                ),
              )
              ),
              Image.asset('assets/images/happy-face 1.png')
            ],
          )

        ]
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

      }, buttonname: "Next",),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
return Container(
  width: 200,
  height: 200,
  child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            _picImage(ImageSource.camera);
          }, icon: Icon(Icons.camera_alt_sharp,size: 80,color: Colors.grey,)),
          IconButton(onPressed: (){
            _picImage(ImageSource.gallery);
          }, icon: Icon(Icons.image,size: 80,color: Colors.grey))
        ],
      )
    ],
  ),
  );
  });
  }

  _picImage(ImageSource imagesourse)async{
    try{
      final photo=await ImagePicker().pickImage(source: imagesourse);
      if(photo==null)return;
      final tempimage=File(photo.path);
      setState(() {
        pickedImage=tempimage;
      });

    }
    catch(ex){

      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(ex.toString()),backgroundColor: Color(0XFF000000)));

    }

  }
}
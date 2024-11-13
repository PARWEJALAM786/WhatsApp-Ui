import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Call%20Screen.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Camera%20Screen.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Chats%20Screen.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Status%20Screen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs:
          [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS')
          ],indicatorColor: Colors.white,
          ),
          toolbarHeight: 80,
          title: UiHelper.CustomText(text: 'WhatsApp', height: 20,color: Colors.white),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search_outlined,size: 40,color: Colors.white,),
            )
          ],
        ),
        body: TabBarView(children:[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen()
        ] ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Chats%20Screen.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Contacts%20Screen.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Home%20Screen.dart';
import 'package:whatsapp_ui/Screens/LoginScreen.dart';
import 'package:whatsapp_ui/Screens/OTP%20Screen.dart';
import 'package:whatsapp_ui/Screens/SplashScreen.dart';
import 'package:whatsapp_ui/Screens/profile%20Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        useMaterial3: false,
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

    );
  }
}

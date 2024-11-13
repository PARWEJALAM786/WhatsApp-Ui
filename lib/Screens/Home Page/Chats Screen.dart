import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Contacts%20Screen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class ChatScreen extends StatelessWidget{
  var arrContent = [
    {
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Gy1FV8gSDjGaD9eMKhYDbH9P2YtsLEBblA&s',
      'name': 'Alia',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '6'
    },
    {
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQln3CMvx6DX8ab9YXhmNbg7vfm7e2f9A44ZT_R3Aeu4852dU08Q3A2sA1LX6S6kiAWBx4&usqp=CAU',
      'name': 'Vikash Ram',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '2'
    },
    {
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7wxXcVCdY_KmA2g71el3A9fuQwjUBGza8clRajv900-CiDsjdhi9l_L32ExgKbMfHj6E&usqp=CAU',
      'name': 'Syed',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '9'
    },{
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Gy1FV8gSDjGaD9eMKhYDbH9P2YtsLEBblA&s',
      'name': 'Alia',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '6'
    },
    {
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQln3CMvx6DX8ab9YXhmNbg7vfm7e2f9A44ZT_R3Aeu4852dU08Q3A2sA1LX6S6kiAWBx4&usqp=CAU',
      'name': 'Vishal Kumar',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '2'
    },
    {
      'images': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7wxXcVCdY_KmA2g71el3A9fuQwjUBGza8clRajv900-CiDsjdhi9l_L32ExgKbMfHj6E&usqp=CAU',
      'name': 'Swati Kumari',
      'lastmsg': "hyeee",
      'time': "03:45 am",
      'msg': '9'
    }
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
body: Column(
  children: [
    SizedBox(height:10,width: 5,),
    Expanded(
      child:
      ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(arrContent[index]['images'].toString()),
          ),
          title: UiHelper.CustomText(text: arrContent[index]['name'].toString(), height: 18,color: Colors.black,fontweight: FontWeight.bold),
          subtitle: UiHelper.CustomText(text: arrContent[index]['lastmsg'].toString(), height: 14),
          trailing: Column(
            children: [
              UiHelper.CustomText(text: arrContent[index]['time'].toString(), height: 14),
              CircleAvatar(backgroundColor: Colors.green,
                radius: 16,
                child: UiHelper.CustomText(text: arrContent[index]['msg'].toString(), height: 18,color: Colors.white),

              )

            ],
          ),
        );

      },
      itemCount: arrContent.length,),
    ),
  ],
),
     floatingActionButton:
     GestureDetector(onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsScreen(),));
     },
       child: CircleAvatar(
         radius: 30,
         backgroundColor: Color(0XFF008665),
         child: Image.asset('assets/images/chats.png'),
       ),
     ),
   );
  }


}
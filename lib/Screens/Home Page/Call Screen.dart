import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home%20Page/Contacts%20Screen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget{

  var arrNumber=[
    {
    'images' : 'https://static.vecteezy.com/system/resources/thumbnails/036/442/721/small_2x/ai-generated-portrait-of-a-young-man-no-facial-expression-facing-the-camera-isolated-white-background-ai-generative-photo.jpg',
    'name' : 'Ajay',
    'time': 'today, 2:34pm'
  },
    {
      'images' : 'https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww',
      'name' : 'Vikash',
      'time': 'today, 2:34pm'
    },
    {
      'images' : 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name' : 'Ankit',
      'time': 'today, 2:34pm'
    },
    {
      'images' : 'https://thumbs.dreamstime.com/b/portrait-handsome-guy-smiling-camera-closeup-standing-over-gray-wall-100294160.jpg',
      'name' : 'Kaushar Alam',
      'time': 'Yesterday, 2:34pm',
    },
    {
      'images' : 'https://static.vecteezy.com/system/resources/thumbnails/036/442/721/small_2x/ai-generated-portrait-of-a-young-man-no-facial-expression-facing-the-camera-isolated-white-background-ai-generative-photo.jpg',
      'name' : 'Rahul',
      'time': 'today, 2:34pm'
    },
    {
      'images' : 'https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww',
      'name' : 'Sameer',
      'time': 'today, 2:34pm'
    },
    {
      'images' : 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name' : 'Syed',
      'time': 'today, 2:34pm'
    },
    {
      'images' : 'https://thumbs.dreamstime.com/b/portrait-handsome-guy-smiling-camera-closeup-standing-over-gray-wall-100294160.jpg',
      'name' : 'Jawed Alam',
      'time': 'Yesterday, 2:34pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        Column(
          children: [
            SizedBox( height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    UiHelper.CustomText(text: 'Favourites', height: 25,color: Colors.black87,fontweight: FontWeight.bold),
                  ],
                ),
              ),
            ),ListTile(
              leading: Stack(
                children: [CircleAvatar(radius: 40,

                  backgroundImage: NetworkImage('https://ih1.redbubble.net/image.230466334.8609/aps,504x498,small,transparent-pad,600x600,f8f8f8.jpg'),
              ),

                ]
            ),
              title: UiHelper.CustomText(text: 'Add favourite', height: 25,color: Colors.black87,fontweight: FontWeight.bold),

        ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  UiHelper.CustomText(text: 'Recent', height: 25,color: Colors.black)
                ],
              ),
            ),Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(radius: 30,
                      backgroundImage: NetworkImage(arrNumber[index]['images'].toString())),
                  title: UiHelper.CustomText(text: (arrNumber[index]['name'].toString()), height: 25,color: Colors.black),
                  subtitle: UiHelper.CustomText(text:(arrNumber[index]['time'].toString()), height: 18),
                  trailing: Icon(Icons.call,color: Colors.green),
                );
              },itemCount: arrNumber.length,),
            )

      ]
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsScreen()));
      },child:Icon(Icons.chat,),
      backgroundColor:Color(0XFF008665) ,),


    );
  }

}
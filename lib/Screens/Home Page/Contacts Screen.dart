import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class ContactsScreen extends StatelessWidget{

  var Numbers = [
  {
 'images': 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    'name': 'Rahul',
    'Work': 'Busy',
  },
    {
      'images': 'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
      'name': 'Sameer',
      'Work': 'At Work',
    },
    {
      'images': 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Vikash',
      'Work': 'cool',
    },
    {
      'images': 'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
      'name': 'Parkash',
      'Work': 'Study',
    },
    {
      'images': 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Rahul',
      'Work': 'Busy',
    },
    {
      'images': 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Sameer',
      'Work': 'At Work',
    },
    {
      'images': 'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
      'name': 'Vikash',
      'Work': 'cool',
    },
    {
      'images': 'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
      'name': 'Parkash',
      'Work': 'Study',
    },



  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: UiHelper.CustomText(text: 'Select Contacts', height: 25,color: Colors.white),
       actions: [Icon(Icons.search,color: Colors.white,size: 40,)],
     ),
     body:  ListView.builder(itemBuilder: (context, index) {
       return ListTile(
         leading: CircleAvatar(
           radius:30,
             backgroundImage: NetworkImage(Numbers[index]['images'].toString()),),
         title: UiHelper.CustomText(text: (Numbers[index]['name'].toString()), height: 20,color:Colors.black87),
         subtitle: UiHelper.CustomText(text: (Numbers[index]['Work'].toString()), height: 17),
       );
     },
     itemCount: Numbers.length,),
   );
  }
}
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget{
  var StatusContent =[
    {
      'images':'https://imageio.forbes.com/specials-images/imageserve/66fc5ffda834e7efc73e0069/David-Steward-Photo-by-Michael-Allio-Icon-Sportswire-via-Getty-Images-1x1/0x0.jpg?format=jpg&height=1080&width=1080',
      'name':'Vishal Ram',
      'time': '09:23pm'

    },
    {
      'images':'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
      'name':'Syed',
      'time': '08:32am'

    },
    {
      'images':'https://media.gettyimages.com/id/507951016/photo/tahler-johnson-is-seen-on-oak-street-wearing-blue-urban-outfitters-hat-light-brown-alpaca-wool.jpg?s=612x612&w=gi&k=20&c=TRF8Iz6XqMo128cqCPWoETv_Vp8tm6bhWwzwVOWVNkU=',
      'name':'Rahul ',
      'time': '02:34pm'

    },
    {
      'images':'https://images.ladbible.com/resize?type=webp&quality=70&width=3840&fit=contain&gravity=auto&url=https://images.ladbiblegroup.com/v3/assets/bltb5d92757ac1ee045/blt864986663773d3e0/665435935939380b65262cb8/AI-creates-what-the-average-person.png%3Fcrop%3D590%2C590%2Cx0%2Cy0',
      'name':'Mukesh ',
      'time': '01:23am'

    }
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
 body:  Column(children: [
   SizedBox(height: 30,),
     Row(children: [
       SizedBox(width: 20),
       UiHelper.CustomText(text: 'Status', height: 25,color: Colors.black87),
     ],
   ),
   SizedBox(height: 10,),

     ListTile(
       leading:
        Padding(
         padding: const EdgeInsets.only(left: 8,top: 10),
         child: Stack(
           children: [CircleAvatar(
             radius:25,
             backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/001/840/618/non_2x/picture-profile-icon-male-icon-human-or-people-sign-and-symbol-free-vector.jpg'),),
             Positioned(bottom: 0,right: 0,
               child: CircleAvatar(radius: 10,
                   child: Icon(Icons.add,color: Colors.white,size: 20,)),
             )
       ]
         ),
       ),
       title: UiHelper.CustomText(text: 'My Status', height: 20,color: Colors.black87),
       subtitle: UiHelper.CustomText(text: 'tap to add Status update', height: 15),
     ),
   SizedBox(height: 20),
   Padding(
     padding: const EdgeInsets.only(left: 20,right: 20),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:
       [
         UiHelper.CustomText(text: 'Recent Updates', height: 20,color: Colors.black87,),
         Icon(Icons.arrow_drop_down)
       ],
     ),
   ),
   Expanded(
     child: ListView.builder(itemBuilder: (context, index) {
       return ListTile(
         leading: CircleAvatar(backgroundImage: NetworkImage(StatusContent[index]['images'].toString()),
         ),
         title: UiHelper.CustomText(text: StatusContent[index]['name'].toString(), height: 20,color: Colors.black),
         subtitle: UiHelper.CustomText(text: StatusContent[index]['time'].toString(), height: 15),
     
       );
     },
     itemCount: StatusContent.length),
   ),
 ]
 ),

   );
  }

}
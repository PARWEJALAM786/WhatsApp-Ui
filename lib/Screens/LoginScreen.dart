import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OTP%20Screen.dart';
import 'package:whatsapp_ui/Screens/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget{

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India";

  TextEditingController phoneController = TextEditingController();

  List<String>countries = [
    'America',
    'Africa',
    'Germany',
    'Italy',
    'India'

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: UiHelper.CustomText(
                text: 'Enter your phone number',
                height: 20, color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          SizedBox(
              height: 30
          ),

          UiHelper.CustomText(
              text: 'WhatsApp will need to verify your phone\n     '
                  'number. Carrier charges may apply.', height: 14),
          SizedBox(height: 5,),
          Center(child: UiHelper.CustomText(text: 'What’s my number?',
              height: 18, color: Color(0XFF00A884)),),

          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(child: Text(country.toString()),
                  value: country,);
              }).toList(), onChanged: (value) {
              setState(() {
                selectedCountry = value!;
              });
            }, value: selectedCountry, decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0XFF00A884)
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0XFF00A884,)
                    )
                )
            ),
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 45,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "+91",
                          hintStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder(borderSide: BorderSide(
                              width: 2, color: Color(0XFF00A884,)),),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFF00A884,)
                              )
                          )
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(flex: 2,
                    child: TextField(

                        decoration: InputDecoration(

                            border: UnderlineInputBorder(borderSide: BorderSide(
                                width: 2, color: Color(0XFF00A884,)),),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFF00A884)),),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0XFF00A884,)
                                )
                            )
                        )
                    )
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(callback: () {

        login(phoneController.text.toString());

        }, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }


   login(String phoneNumber) {
     if (phoneNumber==null) {
       return
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter Phone number'),
           backgroundColor: Color(0xFF00A884),
         ),);
     }
     else {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OTPScreen(phoneNumber: phoneNumber)
     ),
     );

     }
   }
}



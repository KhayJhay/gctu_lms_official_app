import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  final style = TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       alignment: Alignment.center,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
               "You've Logged In \n "
                   "  Successfully",
             style: TextStyle(
               fontFamily: 'Roboto',
               fontSize: 26,
               fontWeight: FontWeight.w600,
             ),
           ),
           SizedBox(height: 300,
             width: 300,
             child: Lottie.asset('assets/Success.json'),
           ),
           SizedBox(height: 20,),
           GestureDetector(onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
           },
             child: Container(
               width: 100,
               height: 100,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(
                   width: 1,
                   color: Colors.deepPurple,
                 ),
                 boxShadow: [
                   BoxShadow(
                     spreadRadius: 2,
                     blurRadius: 16,
                     color: Colors.black.withOpacity(0.1),
                   ),
                 ],
                 color: Colors.deepPurple,
               ),
               child: Center(
                 child: Icon(
                   CupertinoIcons.chevron_right,
                   size: 40,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
           SizedBox(height: 10,),
           Text(
               "Continue",
             style: TextStyle(
               fontFamily: 'Roboto',
               fontSize: 26,
               fontWeight: FontWeight.w600,
             ),
           ),
         ],
       ),
     ),
    );
  }
}

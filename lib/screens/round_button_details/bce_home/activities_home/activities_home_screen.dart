import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_home/activities_home/mid_semester_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_home/activities_home/take_home_exams.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_home/assignments_screen.dart';
import 'package:line_icons/line_icons.dart';
class Activities_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Container(
              height: 128,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text:
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "    "
                                "GCTU",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: "\n "
                                "Activities Home",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(
              alignment: Alignment.topLeft,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  )
              ),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 32, left: 24, right: 24),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Icon(
                                FontAwesomeIcons.bookReader,
                                size: 70,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(child: Container(
                              margin: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bachelor Of \nScience"
                                      " In"
                                      " "
                                      "Computer Engineering",
                                    style: TextStyle(
                                      fontWeight:FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(LineIcons.star,
                                        size: 22,
                                        color: Colors.deepPurple,
                                      ),
                                      SizedBox(width: 4,),
                                      Text("FoE",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(24),
                        child: Text("   Activities Entails",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ) ,
                        ),
                      ),
                      Container(
                        height: 300,
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(56),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 16,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ]
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.doc_text,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Take_Home_Screen()));

                                  },
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Take Home Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Exams Will ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:"be posted, you \n download, work and submit",
                                              style: TextStyle(color: Colors.deepPurple.shade200,
                                                fontWeight: FontWeight.w300,))
                                        ],
                                      ))
                                    ],
                                  ),),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.bookOpen,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Mid_Sem_Screen()));
                                  },
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Mid-Semester Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Download & ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" Submit midsems",
                                              style: TextStyle(color: Colors.deepPurple.shade200,
                                                fontWeight: FontWeight.w300,))
                                        ],
                                      ))
                                    ],
                                  ),),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.pencilAlt,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Assignment_Screen()));
                                  },
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Assignments and Quizzes ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "This Includes: ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:"Assignment Files \n to be"
                                              "downloaded & Submitted",
                                              style: TextStyle(color: Colors.deepPurple.shade200,
                                                fontWeight: FontWeight.w300,))
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

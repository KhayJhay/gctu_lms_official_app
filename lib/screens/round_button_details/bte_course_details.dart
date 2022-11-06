import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

import 'bce_home/activities_home/activities_home_screen.dart';
import 'bce_home/assignments_screen.dart';
import 'bce_home/file_pdfs_screen.dart';
import 'ce_timetable_screen.dart';
class Bte_Course_Detail extends StatelessWidget {
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
                                "   Telecom Engineering",
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
                                CupertinoIcons.settings_solid,
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
                                      " In \n"
                                      "Telecommunication \nEngineering",
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
                        child: Text("This Course Entails",
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
                                Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.filePdf,
                                        color: Colors.white,
                                        size: 34,
                                      ),
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Pdf Documents of Courses",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "150 Pdf",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" documents that matters ",
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
                                Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.video,
                                        color: Colors.white,
                                        size: 34,
                                      ),
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("70 Lecture Videos of Courses",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "1500 mins",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" of Zoom Videos         ",
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
                                Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.award,
                                        color: Colors.white,
                                        size: 34,
                                      ),
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Activities and Projects ",
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
                                          TextSpan(text:"Exams, Midsems, \n"
                                              "          & Assignments ",
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
                      Padding(padding: EdgeInsets.all(24),
                        child: Text("Choose Your Task",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 8, bottom: 0),
                        crossAxisCount: 3,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4,
                                        )
                                      ]
                                  ),
                                  child: IconButton(
                                    icon : Icon(
                                      FontAwesomeIcons.pencilAlt, color: Colors.white, size: 30,
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Assignment_Screen()));
                                    },
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text("Assignments", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4,
                                        )
                                      ]
                                  ),
                                  child: IconButton(
                                    icon : Icon(
                                      FontAwesomeIcons.filePdf, color: Colors.white, size: 30,
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> File_Pdfs_Screen()));
                                    },
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text("Slides & Pdfs",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4,
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon : Icon(
                                        FontAwesomeIcons.video, color: Colors.white, size: 30,
                                      ),
                                      onPressed: (){
                                      },
                                    ),
                                  ),
                                  onTap: (){
                                  },
                                ),
                                SizedBox(height: 8,),
                                Text("Zoom Video",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.05),
                                            blurRadius: 3,
                                            spreadRadius: 4,
                                          )
                                        ],
                                        color: Colors.deepPurple,
                                        shape: BoxShape.circle
                                    ),
                                    child: IconButton(
                                      icon : Icon(
                                        FontAwesomeIcons.clock, color: Colors.white, size: 30,
                                      ),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Ce_timetable_screen()));
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text("Timetable",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(
                                    icon : Icon(
                                      FontAwesomeIcons.bookReader, color: Colors.white, size: 30,
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Activities_Home()));
                                    },
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text("Activities",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.05),
                                            blurRadius: 3,
                                            spreadRadius: 4,
                                          )
                                        ],
                                        shape: BoxShape.circle
                                    ),
                                    child: IconButton(
                                      icon : Icon(
                                        FontAwesomeIcons.facebookMessenger, color: Colors.white, size: 30,
                                      ),
                                      onPressed: (){
                                      },
                                    ),
                                  ),
                                  onTap: (){

                                  },
                                ),
                                SizedBox(height: 8,),
                                Text("Chats",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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

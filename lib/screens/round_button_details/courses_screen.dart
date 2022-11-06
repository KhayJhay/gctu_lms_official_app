import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/constants.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_course_details.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_home/bmath_course_details.dart';
import 'package:gctu_official_app/screens/round_button_details/bee_course_detail.dart';
import 'package:gctu_official_app/screens/round_button_details/bte_course_details.dart';
import 'package:gctu_official_app/screens/round_button_details/course_card.dart';
import 'package:gctu_official_app/screens/round_button_details/programmes_card.dart';

class Courses_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
          end: Alignment.topRight,
          begin: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
        alignment: Alignment.center,
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
                        textAlign: TextAlign.center,
                        text:
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "GCTU",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: "\n "
                                  "Choose Courses",
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
                   topRight: Radius.circular(48)
                 )
               ),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 32,
                          left: 32,
                        ),
                        child: Text(
                          "Faculties/Departments",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 232,
                        margin: EdgeInsets.only(top: 32,),
                        child: PageView(
                          controller: PageController(
                            initialPage: 2,
                            viewportFraction: 0.9,
                          ),
                          children: facultyList.map((value){
                            return CourseCard(
                              data: value,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(padding: EdgeInsets.only(top: 32, left: 32),
                          child: Text(
                            "Programmes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                      ),
                    ),
                    SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16,),
                        sliver: SliverGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 16,
                          childAspectRatio: .95,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bce_Course_Details()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                        end: Alignment.topRight,
                                        begin: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 64,
                                        margin: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(32),
                                                child: Image.asset("assets/images/Lect.jpg",
                                                fit: BoxFit.cover,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Flexible(child: Text(
                                              "Dr. Adopley",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child:
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.deepPurple.shade100,
                                                  size: 28,
                                                ),
                                                SizedBox(width: 2,),
                                                Text(
                                                  "FoE",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Text(
                                              "BSc. Computer Engineering",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bte_Course_Detail()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                        end: Alignment.topRight,
                                        begin: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 64,
                                        margin: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(32),
                                                child: Image.asset("assets/images/Lect1.jpg",
                                                fit: BoxFit.cover,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Flexible(child: Text(
                                              "Ing. Sammy Obeng",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child:
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.deepPurple.shade100,
                                                  size: 28,
                                                ),
                                                SizedBox(width: 2,),
                                                Text(
                                                  "FoE",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Text(
                                              "BSc. Telecom Engineering",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bee_Course_Detail()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                        end: Alignment.topRight,
                                        begin: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 64,
                                        margin: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(32),
                                                child: Image.asset("assets/images/Lect2.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Flexible(child: Text(
                                              "Ing. Isaac Hanson",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child:
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.deepPurple.shade100,
                                                  size: 28,
                                                ),
                                                SizedBox(width: 2,),
                                                Text(
                                                  "FoE",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Text(
                                              "BSc. Electrical Engineering",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bmath_Course_Detail()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                        end: Alignment.topRight,
                                        begin: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(32),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 64,
                                        margin: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(32),
                                                child: Image.asset("assets/images/Lect3.jpg",
                                                fit: BoxFit.cover,),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Flexible(child: Text(
                                              "Ing. Isaac Okai",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child:
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.deepPurple.shade100,
                                                  size: 28,
                                                ),
                                                SizedBox(width: 2,),
                                                Text(
                                                  "FoE",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 4,),
                                            Text(
                                              "BSc.\nMathematics",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                      end: Alignment.topRight,
                                      begin: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(FontAwesomeIcons.user,color: Colors.deepPurple,),
                                          ),
                                          SizedBox(width: 8,),
                                          Flexible(child: Text(
                                            "Dr. Kester",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child:
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepPurple.shade100,
                                                size: 28,
                                              ),
                                              SizedBox(width: 2,),
                                              Text(
                                                "FoCIS",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            "BSc. Information Technology",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                      end: Alignment.topRight,
                                      begin: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(FontAwesomeIcons.user,color: Colors.deepPurple,),
                                          ),
                                          SizedBox(width: 8,),
                                          Flexible(child: Text(
                                            "Dr. Thomas Boakye",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child:
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepPurple.shade100,
                                                size: 28,
                                              ),
                                              SizedBox(width: 2,),
                                              Text(
                                                "FoCIS",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            "BSc. Mobile Computing",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                      end: Alignment.topRight,
                                      begin: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(FontAwesomeIcons.user, color: Colors.deepPurple,),
                                          ),
                                          SizedBox(width: 8,),
                                          Flexible(child: Text(
                                            "Dr. Antwi Boakye",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child:
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepPurple.shade100,
                                                size: 28,
                                              ),
                                              SizedBox(width: 2,),
                                              Text(
                                                "FoITB",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            "BSc.Accounting \nWith Computing",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                      end: Alignment.topRight,
                                      begin: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(FontAwesomeIcons.user,
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                          SizedBox(width: 8,),
                                          Flexible(child: Text(
                                            "Dr. Francis",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child:
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepPurple.shade100,
                                                size: 28,
                                              ),
                                              SizedBox(width: 2,),
                                              Text(
                                                "FoITB",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            "BSc. Procurement\n&Logistics",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

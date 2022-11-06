import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/screens/home/header_with_search_box.dart';
import 'package:gctu_official_app/screens/lecturers_home/bce_dashboard.dart';
import 'package:gctu_official_app/screens/lecturers_home/bte_dashboard.dart';
import 'package:gctu_official_app/screens/round_button_details/about_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_home/select_level_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/calender_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/courses_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/forum_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/news_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/time_table.dart';
import 'package:gctu_official_app/screens/round_button_details/user_profile_screen.dart';
import 'package:gctu_official_app/shared/news_item.dart';
import 'package:gctu_official_app/shared/news_widget.dart';
import 'package:line_icons/line_icons.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  List<String> list = [
    "Covid-19 is real",
    "All Covid-19 Protocols must be observed",
    "All Fees must be paid the Ecobank",
    "Faculty Dues must be Paid at Fidelity Bank"
  ];
  List<Newsitem> listTiles = [
    Newsitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2020/12/january-2021.jpg",
      "Revised Calendar 2020-2021 First and Second Semester May Intake",
      "University Relations ",
      "05/06/2021",
    ),
    Newsitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/01/guideliness-2021.jpg",
      "This is to kindly notify the University Community that, following the suspension of the nationwide UTAG strike action",
      "University Relations",
      "18/07/2021",
    ),
    Newsitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/05/fee-schedule-2021.jpg",
      "Resumption Of Teaching And Related Activities",
      "University Relations",
      "23/07/2021",
    ),
    Newsitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/08/gctu-logo-story.jpg",
      "Approved mode of examination for 2020-2021 Academic year",
      "University Relation",
      "22/07/2021",
    ),
    Newsitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/08/femaleinspires.jpg",
      "Resumption Of Teaching And Related Activities",
      "University Relation",
      "24/07/2021",
    ),
  ];

  var listImages = [
    "ListImg1.jpg",
    "ListImg2.jpg",
    "ListImg3.jpg",
    "ListImg4.jpg",
  ];

  late TabController _tabController;

  int bottomTab = 0;

  var key;

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(
            key: UniqueKey(),
            size: size,
            guestname: null,
          ),
          Container(
            height: 10,
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
                          gradient: LinearGradient(
                            colors: [Colors.purpleAccent, Colors.deepPurple],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ]),
                      child: IconButton(
                        icon: Icon(
                          LineIcons.clock,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 1),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return SlideTransition(
                                      position: Tween(
                                              begin: Offset(1.0, 0.0),
                                              end: Offset(0.0, 0.0))
                                          .animate(animation),
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return Timetable();
                                  }));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Timetable",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
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
                          gradient: LinearGradient(
                            colors: [Colors.purpleAccent, Colors.deepPurple],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ]),
                      child: IconButton(
                        icon: Icon(
                          LineIcons.calendar,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 1),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return SlideTransition(
                                      position: Tween(
                                              begin: Offset(1.0, 0.0),
                                              end: Offset(0.0, 0.0))
                                          .animate(animation),
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return Calendar();
                                  }));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Calendar",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
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
                          gradient: LinearGradient(
                            colors: [Colors.purpleAccent, Colors.deepPurple],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
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
                          icon: Icon(
                            LineIcons.bookOpen,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        Duration(microseconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      return SlideTransition(
                                        position: Tween(
                                                begin: Offset(1.0, 0.0),
                                                end: Offset(0.0, 0.0))
                                            .animate(animation),
                                        child: child,
                                      );
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return Select_Level_Screen();
                                    }));
                          },
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Select_Level_Screen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Courses",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Colors.purpleAccent, Colors.deepPurple],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                          shape: BoxShape.circle),
                      child: IconButton(
                        icon: Icon(
                          LineIcons.userEdit,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 1),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return UserProfile();
                                  }));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "User Profile",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
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
                          gradient: LinearGradient(
                            colors: [Colors.purpleAccent, Colors.deepPurple],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                          ),
                          shape: BoxShape.circle),
                      child: IconButton(
                        icon: Icon(
                          LineIcons.newspaper,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 1),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return SlideTransition(
                                      position: Tween(
                                              begin: Offset(1.0, 0.0),
                                              end: Offset(0.0, 0.0))
                                          .animate(animation),
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return News();
                                  }));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "News",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
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
                            gradient: LinearGradient(
                              colors: [Colors.purpleAccent, Colors.deepPurple],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ],
                            shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(
                            LineIcons.infoCircle,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      return SlideTransition(
                                        position: Tween(
                                                begin: Offset(1.0, 0.0),
                                                end: Offset(0.0, 0.0))
                                            .animate(animation),
                                        child: child,
                                      );
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return About_Screen();
                                    }));
                          },
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 240,
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Available Courses",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Text("these are the courses available"),
                SizedBox(
                  height: 13,
                ),
                Container(
                    height: 170,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/img8.png",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "\nBSc",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              ),
                                              TextSpan(
                                                  text: " "
                                                      "Computer \n Engineering",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Bce_Dashbord_Screen()));
                          },
                        ),
                        InkWell(
                          child: Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/img7.png",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "\nBSc",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              ),
                                              TextSpan(
                                                  text: " "
                                                      "Telecom \n Engineering",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Bte_dashboard_Screen()));
                          },
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/Img3.png",
                                      fit: BoxFit.fill,
                                      width: 140,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\nBSc",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                                text: " "
                                                    "Information \n Technology",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/img6.png",
                                      fit: BoxFit.fill,
                                      width: 140,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\nBSc",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                                text: " "
                                                    "Software \n Engineering",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/img5.png",
                                      fit: BoxFit.fill,
                                      width: 140,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\nBSc",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                                text: " "
                                                    "Business \n Administration",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/img9.png",
                                      fit: BoxFit.fill,
                                      width: 140,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\nBSc",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                                text:
                                                    " " "Solar \n Engineering",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  Colors.deepPurple
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/img10.png",
                                      fit: BoxFit.fill,
                                      width: 140,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\nBSc",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                                text: " "
                                                    "Information \n Technology",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Upcoming Events...",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Text(
                          "view all",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepPurple,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Join now",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      height: 170,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/event.jpg",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 80,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/event1.jpg",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/event2.jpg",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/event3.jpg",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 16, bottom: 8),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purpleAccent,
                                    Colors.deepPurple
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/event4.jpg",
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              )),
          Container(
            height: 32,
            child: TabBar(
              onTap: (newIndex) {
                print(newIndex);
                setState(() {
                  currentIndex = newIndex;
                });
              },
              unselectedLabelStyle: TextStyle(
                color: Colors.deepPurple.shade300,
                fontSize: 16,
              ),
              labelStyle: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.deepPurple,
              isScrollable: true,
              labelColor: Colors.deepPurple,
              unselectedLabelColor: Colors.deepPurple.shade300,
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  text: "General News",
                ),
                Tab(
                  text: "Academic Routine",
                ),
                Tab(
                  text: "Fees Info",
                ),
                Tab(
                  text: "Lecturers",
                ),
                Tab(
                  text: "Gctu Radio",
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24, top: 8),
            height: 380,
            child: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {},
                            child: newsWidget(listTiles[index]),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: newsWidget(listTiles[index]),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: newsWidget(listTiles[index]),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: newsWidget(listTiles[index]),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: newsWidget(listTiles[index]),
                          );
                        }),
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}

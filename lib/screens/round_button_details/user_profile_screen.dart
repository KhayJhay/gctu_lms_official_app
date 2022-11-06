import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/models/user_model.dart';
import 'package:gctu_official_app/size_config.dart';
import 'package:line_icons/line_icons.dart';
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState(){
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
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
                            text: "     "
                                "GCTU",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: "\n "
                                "\nStudent's User Profile",
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
              child: Stack(
                children: <Widget>[
                  ClipPath(
                   clipper: CustomShape(),
                    child: Container(
                      height: 150,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                spreadRadius: 2,
                              ),
                            ],
                            ),
                          child: Icon(
                            FontAwesomeIcons.user,
                            size: 80,
                            color: Colors.deepPurple,
                          ),
                          ),
                        SizedBox(height: 10,),
                        Text("${loggedInUser.name}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("${loggedInUser.email}",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple.shade300,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Student ID:"
                             " "
                            "${loggedInUser.indexNumber}",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple.shade300,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Programme:"
                            " "
                            "${loggedInUser.courseName}",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple.shade300,
                          ),
                        ),SizedBox(height: 5,),
                        Text("Level:"
                            " "
                            "level-400",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple.shade300,
                          ),
                        ),
                        SizedBox(height: 15,),
                        ProfileMenuItem(
                            key: UniqueKey(),
                            iconSrc: "*",
                            title: "View Resources",
                            press: (){
                            }
                        ),
                        ProfileMenuItem(
                            key: UniqueKey(),
                            iconSrc: "*",
                            title: "Info",
                            press: (){
                            }
                        ),
                        ProfileMenuItem(
                            key: UniqueKey(),
                            iconSrc: "*",
                            title: "Personal Schedule",
                            press: (){
                            }
                        ),
                        ProfileMenuItem(
                            key: UniqueKey(),
                            iconSrc: "*",
                            title: "Settings",
                            press: (){
                            }
                        ),
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
    );;
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    required Key key,
    required this.iconSrc,
    required this.title,
    required this.press,

}) : super(key: key);
  final String iconSrc, title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){

      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.readme,
              color: Colors.deepPurple,
            ),
            SizedBox(width: 20,),
            Text(title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}


class CustomShape extends CustomClipper<Path> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height-100);
    path.quadraticBezierTo(width/2, height, width, height-100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

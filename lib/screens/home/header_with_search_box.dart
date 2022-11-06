import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/models/user_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:gctu_official_app/screens/home/body.dart';

class HeaderWithSearchBox extends StatefulWidget {
  final guestname;
   HeaderWithSearchBox({
    required Key key,
    required this.size,
    @required this.guestname,

  }) : super(key: key);

  final Size size;



  @override
  _HeaderWithSearchBoxState createState() => _HeaderWithSearchBoxState();
}

class _HeaderWithSearchBoxState extends State<HeaderWithSearchBox> {
  final style = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
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
    return Container(
      margin: EdgeInsets.only(bottom: 20*2.5),
      height: widget.size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 56,
            ),
            height: widget.size.height*0.2 - 27,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),

            child: Row(
              children: [
                RichText(text:
                TextSpan(
                 children: [TextSpan(
                   text: "Hi,"
                       "  ${loggedInUser.name}",
                   style: TextStyle(
                     fontFamily: 'Roboto',
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                   TextSpan(
                     text: "\n\nWelcome To GCTU Mobile",  style: TextStyle(
                     fontFamily: 'Roboto',
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                   ),
                   )
                 ],
                ),
                ),
              ],
            ),

          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child:
                  TextField(
                    onChanged: (value){},
                    decoration: InputDecoration(
                      hintText: "Search For Courses",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  ),
                  Icon(
                    LineIcons.search,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

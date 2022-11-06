import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class ButtonWidget extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
            spreadRadius: 2,
            blurRadius: 16,
            color: Colors.black.withOpacity(0.1),
        ),
          ],
          gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        ),
        child: Center(
          child: Icon(
            CupertinoIcons.arrow_right,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

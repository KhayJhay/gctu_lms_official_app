import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final data;
  const CourseCard({Key? key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
            end: Alignment.centerLeft,
            begin: Alignment.centerRight,
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
        children: <Widget>[
        Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(32),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.asset(
              "assets/images/img10.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
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

    children: <Widget>[
    Center(
      child: RichText(text: TextSpan(
      children: [
      TextSpan(text: data["title"], style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 20,
      color: Colors.white),),
      TextSpan(text: data["facini"],
          style: TextStyle(
      color: Colors.white,
      ),
      ),
      ],
      ),
      ),
    ),
    ]
      ),
    ),
        )
        ]
    )
    );
  }
}

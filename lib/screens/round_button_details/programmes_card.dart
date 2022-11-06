import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgrammesCard extends StatelessWidget {
  final data;
  const ProgrammesCard({Key? key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
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
                ),
                SizedBox(width: 8,),
                Flexible(child: Text(
                    data["hod"],
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
                      data["facini"],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Text(
                  data["title"],
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
    );
  }
}

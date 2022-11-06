import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../file_pdfs_screen.dart';

class Mid_Sem_Screen extends StatelessWidget {
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
                                " Take Home Exams",
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
                                CupertinoIcons.book_solid,
                                size: 60,
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
                                  Text("Mid-Semester Exams"
                                      "\nLevel-400"
                                      "\nSecond Semester",
                                    style: TextStyle(
                                      fontWeight:FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.deepPurple,
                                      ),
                                      SizedBox(width: 4,),
                                      Text("BCE",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance.collection("midsem").snapshots(),
                          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.hasData){
                              return SizedBox(
                                height: 450,
                                child: ListView.builder(
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context,i){
                                      QueryDocumentSnapshot x = snapshot.data!.docs[i];
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 190,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.deepPurple,
                                            ),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 30),
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("L400",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                              Text("2021 Mid-Semester Examination",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.deepPurple[200],
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Icon(FontAwesomeIcons.infoCircle,
                                                    size: 15,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Text("Lecturer: Michael Xenya",)
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Icon(FontAwesomeIcons.code,
                                                    size: 15,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Text("  Course Code: CENG 412",
                                                    style: TextStyle(
                                                      color: Colors.deepPurple,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 15,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    child: Container(
                                                        height: 35,
                                                        width: 250,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(15,),
                                                          color: Colors.deepPurple,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            x["num"],
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white
                                                            ),
                                                          ),
                                                        )
                                                    ),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> View(url: x['fileUrl'],)));
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              );
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        /*
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            borderRadius: BorderRadius.horizontal(
                                              right: Radius.circular(5),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 15,),
                                      Row(
                                        children: [
                                          Text("Advanced Computer Architecture",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ) ,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic I",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Introduction to Advanced Computer Architecture",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Michael Xenya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: CENG 412",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Container(
                                      height: 35,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15,),
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Preview Slide",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      )
                                  ),
                                  onTap: () async {
                                    final url = '25844825.pdf';
                                    final file = await PDFApi.loadFirebase(url);
                                    if(file == null) return;
                                    openPDF(context, file);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic II",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Operating Systems",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Michael Xenya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: CENG 412",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15,),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Preview Slide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic III",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Computer Arithmetic",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Michael Xenya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: CENG 412",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15,),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Preview Slide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            borderRadius: BorderRadius.horizontal(
                                              right: Radius.circular(5),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Row(
                                        children: [
                                          Text("Data Communication And Computer Networks",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ) ,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic I",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Data Communication, networking and interent",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Dr. Ruhiya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: ENTE 421",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15,),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Preview Slide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic II",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("  Protocol Architecture & TCP/IP",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Dr. Ruhiya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: ENTE 421",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15,),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Preview Slide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.deepPurple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Topic III",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Data Transmission",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple[200],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.infoCircle,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("Lecturer: Dr. Ruhiya",)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.code,
                                  size: 15,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(width: 5,),
                                Text("  Course Code: ENTE 421",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15,),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Preview Slide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      */
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

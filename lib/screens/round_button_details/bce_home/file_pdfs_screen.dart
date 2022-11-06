import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/api/firebase_pdf_api.dart';
import 'package:gctu_official_app/screens/view_pdf/pdf_viewer_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:path/path.dart' as path;

class File_Pdfs_Screen extends StatefulWidget {
  @override
  State<File_Pdfs_Screen> createState() => _File_Pdfs_ScreenState();
}

class _File_Pdfs_ScreenState extends State<File_Pdfs_Screen> {
  /*
  bool loading = true;

  String progress = "0";
  final Dio dio = Dio();

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  // permission status
  Future<bool> reguestPermission() async {
    final persmission = await Permission.storage.status;
    if (persmission != PermissionStatus.granted) {
      await Permission.storage.request();
    }
    return persmission == PermissionStatus.granted;
  }

  // download directory
  Future<Directory?> getDonwloadDirectory() async {
    if (Platform.isAndroid) {
      return await DownloadsPathProvider.downloadsDirectory;
    }
    return getApplicationDocumentsDirectory();
  }

  Future startDownload(String savePath, String urlPath) async {
    Map<String, dynamic> result = {
      "isSuccess": false,
      "filePath": null,
      "error": null
    };
    try {
      var response = await dio.download(urlPath, savePath,
          onReceiveProgress: _onReceiveProgress);
      result['isSuccess'] = response.statusCode == 200;
      result['filePath'] = savePath;
    } catch (e) {
      result['error'] = e.toString();
    } finally {
      _showNotification(result);
    }
  }

  _onReceiveProgress(int receive, int total) {
    if (total != -1) {
      setState(() {
        progress = (receive / total * 100).toStringAsFixed(0) + "%";
      });
    }
  }

  Future _showNotification(Map<String, dynamic> downloadStatus) async {
    final andorid = AndroidNotificationDetails(
        "channelId", 'Shajedul islam shawon', 'channelDescription',
        priority: Priority.high, importance: Importance.max);
    final ios = IOSNotificationDetails();
    final notificationDetails = NotificationDetails(android: andorid, iOS: ios);
    final json = jsonEncode(downloadStatus);
    final isSuccess = downloadStatus['isSuccess'];
    await FlutterLocalNotificationsPlugin().show(
        0,
        isSuccess ? "Sucess" : "error",
        isSuccess ? "File Download Successful" : "File Download Faild",
        notificationDetails,
        payload: json);
  }


  Future download(String fileUrl, String fileName, {url}) async {
    final dir = await getDonwloadDirectory();
    final permissionStatus = await reguestPermission();
    if (permissionStatus) {
      final savePath = path.join(dir!.path, fileName);
      await startDownload(savePath, fileUrl);
      print(savePath);
    } else {
      print("Permission Denied!");
    }
  }

  @override
  void initState() {
    super.initState();

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final android = AndroidInitializationSettings('mipmap/ic_launcher');
    final ios = IOSInitializationSettings();
    final initSetting = InitializationSettings(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.initialize(initSetting,);
  }
  */

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
                            text: "   "
                                "GCTU",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: "\n "
                                " Slides & Pdfs",
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
                                FontAwesomeIcons.filePdf,
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
                                  Text("Slides & Pdfs"
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
                      SizedBox(height: 10,),
                      SizedBox(height: 25,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Advanced Computer Architecture",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                      StreamBuilder(
                        stream: FirebaseFirestore.instance.collection("file").snapshots(),
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
                                     Text("October 2021",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 16,
                                       ),
                                     ),
                                     SizedBox(height: 5,),
                                     Text("Advanced Computer Architecture PDFs",
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
                                     GestureDetector(
                                       onTap: (){
                                       },
                                       child: Row(
                                         children: [
                                           Icon(FontAwesomeIcons.download,
                                             size: 15,
                                             color: Colors.deepPurple,
                                           ),
                                           SizedBox(width: 5,),
                                           Text("  Download file",
                                             style: TextStyle(
                                               color: Colors.deepPurple,
                                               fontWeight: FontWeight.bold,
                                             ),
                                           ),
                                         ],
                                       ),
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
                      SizedBox(height: 25,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Data Communication And Networking",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance.collection("filePdf").snapshots(),
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
                                              Text("October 2021",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                              Text("Data Communication PDFs",
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

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file, key: UniqueKey(),)),
  );
}
class View extends StatelessWidget {
  PdfViewerController? _pdfViewerController;
final url;
View({this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("PDF View"),
       ),
      body: SfPdfViewer.network(
       url,
        controller: _pdfViewerController,
      ),
    );
  }
}


 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/api/notification_api.dart';
import 'package:line_icons/line_icons.dart';
import 'package:simple_url_preview/simple_url_preview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'destination_screen.dart';
class Notify_Users_screen extends StatefulWidget {
  @override
  _Notify_Users_screenState createState() => _Notify_Users_screenState();
}

class _Notify_Users_screenState extends State<Notify_Users_screen> {


  void openURL() async => await canLaunch("https://app.onesignal.com") ? await launch("https://app.onesignal.com") :throw 'Could Not Launch URL';

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override

  void initState() {
    super.initState();
    requestPermissions();
    var androidSettings = AndroidInitializationSettings('app_icon');
    var iOSSettings = IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    var initSetttings = InitializationSettings(android: androidSettings, iOS: iOSSettings);
    flutterLocalNotificationsPlugin.initialize(initSetttings);

  }

  void requestPermissions() {
    flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future onClickNotification(String payload) async {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return DestinationScreen(
        payload: payload,
      );
    }));
  }


  showSimpleNotification() async {
    var androidDetails = AndroidNotificationDetails(''
        'id',
        'channel ',
        'description',
         importance: Importance.max
    );
    var iOSDetails = IOSNotificationDetails();
    var platformDetails = new NotificationDetails(android: androidDetails, iOS: iOSDetails);
    await flutterLocalNotificationsPlugin.show(0, 'Flutter Local Notification', 'Flutter Simple Notification',
        platformDetails, payload: 'Destination Screen (Simple Notification)');
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
                            text: "    "
                                "GCTU",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: "\n "
                                "    Notify Users",
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
                                FontAwesomeIcons.bell,
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
                                      " In"
                                      " "
                                      "Computer Engineering",
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
                      Padding(padding: EdgeInsets.only(left: 24, bottom: 0, top: 24),
                        child: Text("Notify Students Here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ) ,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: SizedBox(height: 200,
                          child: SimpleUrlPreview(
                            url: 'https://onesignal.com',
                            previewHeight: 200,
                          )
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: () => NotificationApi.showNotification(
                                    title: 'Take Home Exams',
                                    body: 'Hi, Take home exams has been uploaded successfully, please check it up',
                                    payload: 'Take Home Exams'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Take Home Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:"after take-home \nexam uploaded successfully",
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: ()=> NotificationApi.showNotification(
                                      title: 'Mid-Semester Exams',
                                      body: 'Hi, Mid-Semester Exams has been uploaded successfully, please check it up',
                                      payload: 'Mid-Semester Exams'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Mid-Semester Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" after Mid-Semester\nexam uploaded successfully",
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: ()=> NotificationApi.showNotification(
                                      title: 'Class Assignment',
                                      body: 'Hi, Class Assignment has been uploaded successfully, please check it up',
                                      payload: 'Assignment'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Assignments and Quizzes ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" after Assignments\n are uploaded successfully",
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
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.all(24),
                        child: Text("Notify Students on Due Dates...",
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: () => NotificationApi.showNotification(
                                      title: 'Take Home Exams',
                                      body: 'Hi, The Submission date for the Take Home Exam is Due, Please Submit',
                                      payload: 'Take Home Exams'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Take Home Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:"If the date of \n Take Home exam Submission is due",
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: ()=> NotificationApi.showNotification(
                                      title: 'Mid-Semester Exams',
                                      body: 'Hi, The date of submission of midsem is due, please check it up',
                                      payload: 'Mid-Semester Exams'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Mid-Semester Examination",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" if the Date for\n Submission of midsem is due",
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
                                GestureDetector(
                                  child: Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 34,
                                        ),
                                      )
                                  ),
                                  onTap: ()=> NotificationApi.showNotification(
                                      title: 'Class Assignment',
                                      body: 'Hi, The Date for submission of assignment is due, please submit',
                                      payload: 'Assignment'
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    children: [
                                      Text("Assignments and Quizzes ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      SizedBox(height: 12,),
                                      RichText(text: TextSpan(
                                        text: "Notify Students, ",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(text:" if the date of \n submission of assignment is due",
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

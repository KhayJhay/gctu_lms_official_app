import 'package:flutter/material.dart';
import 'package:gctu_official_app/constants.dart';
import 'package:gctu_official_app/onBoarding_page.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:gctu_official_app/screens/lecturers_home/lecturers_home_screen.dart';
import 'package:gctu_official_app/screens/login_success/login_success_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/bce_course_details.dart';
import 'package:gctu_official_app/screens/sign_in/sign_in_screen.dart';
import 'package:gctu_official_app/screens/splash/splash_screen.dart';
import 'package:gctu_official_app/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gctu_official_app/theme.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EducationApp());
}

class EducationApp extends StatefulWidget {
  @override
  State<EducationApp> createState() => _EducationAppState();
}

class _EducationAppState extends State<EducationApp> {
  @override
  void initState() {
    super.initState();
  initPlatformState();
  }

  static final String oneSignalAppId = '05e65654-15cc-4e2f-bf5f-23ff875117f9';
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Home",
        debugShowCheckedModeBanner: false,
        theme: theme(),

        home: OnBoardingPage(),

        routes: routes,
      )
    ;
  }
  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
  }
}






import 'package:flutter/widgets.dart';
import 'package:gctu_official_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:gctu_official_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:gctu_official_app/screens/login_success/login_success_screen.dart';
import 'package:gctu_official_app/screens/sign_in/sign_in_screen.dart';
import 'package:gctu_official_app/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => MainPage(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),


};

import 'package:flutter/material.dart';

import 'package:gctu_official_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Body(),
    );
  }
}

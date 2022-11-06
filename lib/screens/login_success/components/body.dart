import 'package:flutter/material.dart';
import 'package:gctu_official_app/components/default_button.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:gctu_official_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.04),
          Image.asset(
            "assets/images/succ.png",
            height: SizeConfig.screenHeight! * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.08),
          Text(
            "     "
            "Login \nSuccessful",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.6,
            child: DefaultButton(
              text: " Home",
              press: () {
                Navigator.pushNamed(context, MainPage.routeName);
              }, key: UniqueKey(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

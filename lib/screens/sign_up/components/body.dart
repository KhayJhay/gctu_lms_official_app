import 'package:flutter/material.dart';
import 'package:gctu_official_app/components/socal_card.dart';
import 'package:gctu_official_app/constants.dart';
import 'package:gctu_official_app/models/home_model.dart';
import 'package:gctu_official_app/screens/sign_in/sign_in_screen.dart';
import 'package:gctu_official_app/size_config.dart';
import 'package:provider/provider.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height *0.4,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(42),
                          bottomRight: Radius.circular(42),
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 16,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ]
                    ),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            child: Text("\n\n\n\n\n\nWelcome to GCTU Moodle",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto'
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            child: Text("\n\n\n\n\n\n\n\n\n\n\nSign Up Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto'
                              ),),
                          ),
                        ),
                        Center(
                          child: Image.asset("assets/images/logo1.png"),
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: SizeConfig.screenHeight! * 0.02),
                              Text(
                                "Register Account With Email and Password "
                                    "\n\nFill all other necessary Information",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: SizeConfig.screenHeight! * 0.02),
                              SignUpForm(),
                              SizedBox(height: SizeConfig.screenHeight! * 0.02),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?", style: TextStyle(color:Colors.purple,fontSize: 15.5),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()
                          ));
                        },
                        child: Text(" Sign In",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color:Colors.purple, fontSize: 15.5, fontWeight: FontWeight.w800
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gctu_official_app/components/no_account_text.dart';
import 'package:gctu_official_app/components/socal_card.dart';
import 'package:gctu_official_app/constants.dart';
import 'package:gctu_official_app/models/home_model.dart';
import 'package:gctu_official_app/screens/lecturers_sign_in/Lecturers_sign_in_screen.dart';
import 'package:gctu_official_app/screens/sign_up/sign_up_screen.dart';
import 'package:gctu_official_app/size_config.dart';
import 'package:gctu_official_app/utils/colors.dart';
import 'package:gctu_official_app/widgets/textfield_widget.dart';
import 'package:provider/provider.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          child: Text("\n\n\n\n\n\n\n\n\n\n\nSign In to Continue",
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
                             SizedBox(height: 5,),
                             Text(
                               "Sign in with your email and password "
                                   "\n\nIf You Already have an Account",
                               style: TextStyle(
                                   color: Colors.purple,
                                   fontSize: 15,
                                   fontWeight: FontWeight.w600,
                                   fontFamily: 'Roboto'
                               ),
                               textAlign: TextAlign.center,
                             ),
                             SizedBox(height: SizeConfig.screenHeight! * 0.02),
                             SignForm(),
                             SizedBox(height: SizeConfig.screenHeight! * 0.04),
                             NoAccountText(key: UniqueKey(),),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),
                SizedBox(height: 2,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32,),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 16,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                              gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "For Lecturers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                            )
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Lecturers_Sign_In()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32,),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 16,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                              gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                            )
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                      ),
                    ],
                  ),
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

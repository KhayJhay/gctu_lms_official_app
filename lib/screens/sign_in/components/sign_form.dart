import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/components/custom_surfix_icon.dart';
import 'package:gctu_official_app/components/form_error.dart';
import 'package:gctu_official_app/helper/functions.dart';
import 'package:gctu_official_app/helper/keyboard.dart';
import 'package:gctu_official_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:gctu_official_app/screens/lecturers_home/lecturers_home_screen.dart';
import 'package:gctu_official_app/screens/login_success/login_success_screen.dart';
import 'package:gctu_official_app/services/auth.dart';
import 'package:gctu_official_app/services/auth_services.dart';
import 'package:gctu_official_app/widgets/button_widgets.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  late String email;
  late String password;
  bool remember = false;
 final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty)
          {
            return ("Please Enter Your Email");
          }
        if(!RegExp("^[a-zA-Z0-9+_,-]+@[a-zA-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
          return ("Please Enter a Valid Email");
        }
        return null;
      },
      onSaved: (value){
        emailController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg", key: UniqueKey(),),
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value){
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty){
          return ("Password is required for login");
        }
        if(!regex.hasMatch(value))
          {
            return("Please Enter Valid Password(Min. 6 Character)");
          }
      },
      onSaved: (value){
        passwordController.text =value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg", key: UniqueKey(),),
      ),
    );
    final loginButton = InkWell(
      onTap: (){
        signIn(emailController.text, passwordController.text);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
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
          child: Icon(
            CupertinoIcons.arrow_right,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailField,
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordField,
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Colors.purple,
                checkColor: Colors.purple,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me",
                style: TextStyle(
                  color: Colors.purple,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline,
                    color: Colors.purple,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          loginButton,
        ],
      ),
    );
  }

  void signIn(String email, String password) async
  {
    if(_formKey.currentState!.validate())
      {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
        Fluttertoast.showToast(msg: "Sign In Successful"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginSuccessScreen())),
        }).catchError((e){
          Fluttertoast.showToast(msg: e!.message);
        });
      }
  }
}


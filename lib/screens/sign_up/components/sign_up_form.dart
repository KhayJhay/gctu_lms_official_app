import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/components/custom_surfix_icon.dart';
import 'package:gctu_official_app/components/default_button.dart';
import 'package:gctu_official_app/components/form_error.dart';
import 'package:gctu_official_app/helper/functions.dart';
import 'package:gctu_official_app/models/user_model.dart';
import 'package:gctu_official_app/screens/complete_profile/complete_profile_screen.dart';

import 'package:gctu_official_app/constants.dart';
import 'package:gctu_official_app/screens/home/main_page.dart';
import 'package:gctu_official_app/screens/login_success/login_success_screen.dart';
import 'package:gctu_official_app/services/auth.dart';
import 'package:gctu_official_app/services/auth_services.dart';
import 'package:gctu_official_app/size_config.dart';
import 'package:gctu_official_app/widgets/button_widgets.dart';
import 'package:line_icons/line_icons.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _nameTEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final nameEditingController = new TextEditingController();
  final indexNumberEditingController = new TextEditingController();
  final courseEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  late String name;
  late String email;
  late String password;
 final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      autofocus: false,
      controller: nameEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty){
          return ("Name Cannot be Empty");
        }
        if(!regex.hasMatch(value))
        {
          return("Please Enter Valid Name(Min. 3 Character)");
        }
      },
      onSaved: (value){
        nameEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(svgIcon: "assets/icons/User.svg", key: UniqueKey(),),
      ),
    );
    final indexNumberField = TextFormField(
      autofocus: false,
      controller: indexNumberEditingController,
      keyboardType: TextInputType.number,
      validator: (value){
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty){
          return ("Student ID is Required");
        }
        if(!regex.hasMatch(value))
        {
          return("Please Enter Valid ID(Min. 10 Characters)");
        }
      },
      onSaved: (value){
        indexNumberEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Index Number",
        hintText: "Enter your Student ID",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(LineIcons.identificationCard,
            size: 26,
            color: Colors.purple,
          ),
        ),
      ),
    );
    final courseField = TextFormField(
      autofocus: false,
      controller: courseEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value){
        courseEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Course",
        hintText: "Enter your Course Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(LineIcons.school,
            size: 26,
            color: Colors.purple,
          ),
        ),
      ),
    );
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
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
        emailEditingController.text =value!;
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
      controller: passwordEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        passwordEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg", key: UniqueKey(),),
      ),
    );
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value)
      {
        if(confirmPasswordEditingController.text !=
        passwordEditingController.text ){
          return "Password doesn't match";
        }
        return null;
      },
      onSaved: (value){
        passwordEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Confirm pw",
        hintText: "Confirm Your Password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg", key: UniqueKey(),),
      ),
    );
    final signUpButton = InkWell(
      onTap: (){
        signUp(emailEditingController.text, passwordEditingController.text);
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
          nameField,
          SizedBox(height: getProportionateScreenHeight(30)),
          indexNumberField,
          SizedBox(height: getProportionateScreenHeight(30)),
          courseField,
          SizedBox(height: getProportionateScreenHeight(30)),
          emailField,
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordField,
          SizedBox(height: getProportionateScreenHeight(30)),
          confirmPasswordField,
          SizedBox(height: getProportionateScreenHeight(40)),
          signUpButton,
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      obscureText: false,
        onChanged: (val) {
      email = val;
    },

      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg", key: UniqueKey(),),
      ),
    );
  }

  void signUp(String email, String password) async {
   if(_formKey.currentState!.validate()){
     await _auth.createUserWithEmailAndPassword(email: email, password: password)
         .then((value) => {postDetailsToFirestore()})
         .catchError((e) {
           Fluttertoast.showToast(msg: e!.message);
     });
   }
  }
  postDetailsToFirestore() async {
   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
   User? user = _auth.currentUser;
   UserModel userModel = UserModel();

   userModel.email = user!.email;
   userModel.uid = user.uid;
   userModel.indexNumber = indexNumberEditingController.text;
   userModel.name = nameEditingController.text;
   userModel.courseName = courseEditingController.text;

   await firebaseFirestore
      .collection("users")
      .doc(user.uid)
      .set(userModel.toMap());
   Fluttertoast.showToast(msg: "Account Created Successfully");
   Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context) =>LoginSuccessScreen()), (route) => false);
  }
}

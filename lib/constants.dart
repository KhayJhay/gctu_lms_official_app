import 'package:flutter/material.dart';
import 'package:gctu_official_app/size_config.dart';

const kPrimaryColor = Colors.deepPurple;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kAppID = '05e65654-15cc-4e2f-bf5f-23ff875117f9';
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Colors.amber;
const kTextColor = Colors.deepPurple;

const kAnimationDuration = Duration(milliseconds: 200);
const facultyList = [
  {
    "color": Colors.deepPurple,
    "title": "Faculty Of Engineering",
    "facini": "\nFoE",
    "hod": "Dr. Adopley"
  },
  {
    "color": Colors.deepPurple,
    "title": "Faculty Of Computing & I.S",
    "facini": "\nFoCIS",
    "hod": "Dr. Adopley"
  },
  {
    "color": Colors.deepPurple,
    "title": "Faculty Of IT Business",
    "facini": "\nFoITB",
    "hod": "Dr. Adopley"
  },

];
final timetableList = [

];
final programmesList = [
  {
    "color": Colors.deepPurple,
    "title": "BSc.Computer Engineering",
    "facini": "FoE",
    "hod": "Dr. Adopley",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc.Telecom Engineering",
    "facini": "FoE",
    "hod": "Dr. Adjin",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc.Electrical Engineering",
    "facini": "FoE",
    "hod": "Dr. Emmanuel Effah",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc\nMathematics ",
    "facini": "FoE",
    "hod": "Dr. E.K Mensah",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Informatics",
    "facini": "FoCIS",
    "hod": "Dr. Michael Xenya",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Information Technology",
    "facini": "FoCIS",
    "hod": "Dr. Kester",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Mobile Computing",
    "facini": "FoCIS",
    "hod": "Dr. Samuel Afoakwa",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Computer Science",
    "facini": "FoCIS",
    "hod": "Dr. Thomas Boakye",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc.Accounting \nWith Computing",
    "facini": "FoITB",
    "hod": "Dr. Adopley",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc\nEconomics",
    "facini": "FoITB",
    "hod": "Dr. Adopley",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Procurement\n&Logistics",
    "facini": "FoITB",
    "hod": "Dr. Mark",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Banking\n&Finance ",
    "facini": "FoITB",
    "hod": "Dr. Francis",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Management",
    "facini": "FoITB",
    "hod": "Dr. Samuel",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. HRM Option",
    "facini": "FoITB",
    "hod": "Dr. Jordan",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Marketing Option",
    "facini": "FoITB",
    "hod": "Dr. Andrews",
  },
  {
    "color": Colors.deepPurple,
    "title": "BSc. Management ",
    "facini": "FoITB",
    "hod": "Dr. Appiah",
  },
];
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.deepPurple,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

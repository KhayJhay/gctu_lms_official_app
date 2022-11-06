import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/models/user_model.dart';
import 'package:gctu_official_app/screens/home/body.dart';
import 'package:gctu_official_app/screens/round_button_details/about_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/calender_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/courses_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/news_screen.dart';
import 'package:gctu_official_app/screens/round_button_details/user_profile_screen.dart';
import 'package:gctu_official_app/screens/sign_in/sign_in_screen.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  static String routeName = "/main_paige";
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      drawer: NavigationDrawerWidget(),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
    );
  }
}

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  User? user = FirebaseAuth.instance.currentUser;

  UserModel loggedInUser = UserModel();

  @override
  void initState(){
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    final name = '${loggedInUser.name}';
    final email = '${loggedInUser.email}';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
          child: ListView(
            children: <Widget>[
              buildHeader(
                name: name,
                email: email,
                icon: LineIcons.user,
                onClicked: () =>  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserProfile(),
                )),
              ),
              const SizedBox(height: 16,),
              buildMenuItem(
                text: 'User Profile',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 16,),
              buildMenuItem(
                text: 'Courses',
                icon: LineIcons.bookOpen,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 16,),
              buildMenuItem(
                text: 'New & Announcement',
                icon: LineIcons.newspaper,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 16,),
              buildMenuItem(
                text: 'About Us',
                icon: LineIcons.infoCircle,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(height: 24,),
              Divider(color: Colors.white,),
              const SizedBox(height: 24,),
              const SizedBox(height: 48,),
              buildMenuItem(
                text: 'Calendar',
                icon: LineIcons.calendar,
                onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(height: 48,),
              buildMenuItem(
                text: 'Log Out',
                icon: Icons.logout_outlined,
                onClicked: () => logout(context)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildHeader({
   required String name,
   required String email,
   required IconData icon,
   VoidCallback? onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(icon, color: Colors.deepPurple, size: 38,),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}){
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text,style: TextStyle(color: color),),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index){
  switch (index){
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UserProfile(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Courses_Screen(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => News(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => About_Screen(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Calendar(),
      ));
      break;
  }
}

Future<void> logout(BuildContext context) async
{
  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignInScreen()));
}

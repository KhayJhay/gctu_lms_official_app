import 'package:flutter/material.dart';
import 'package:gctu_official_app/screens/sign_in/sign_in_screen.dart';
import 'package:gctu_official_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final style = TextStyle(fontSize: 26, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                bodyWidget: Center(
                  child: Text(
                    "Welcome to GCTU Official Moodle, Interact with new and improved features",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
                  ),
                ),
                image: Image.asset("assets/images/splash.png",
                  height: 265,
                  width: 235,
                ),
                footer: Text("Let's Learn"),
                titleWidget: Text(
                  "Welcome To GCTU Mobile",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                )
            ),
            PageViewModel(
                    titleWidget: Text(
                     "Interactive Features",
                       style: GoogleFonts.roboto(textStyle: style,)
                 ),
                bodyWidget: Center(
                  child: Text(
                    "One of the most effective ways to make learners more engaged in what they are doing it to make it interactive.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                image: Center(
                  child: SizedBox(
                    child: Lottie.asset("assets/lottie_splash1.json",
                        height: 565,
                        width: 535,
                    ),
                  ),
                ),
            ),
            PageViewModel(
                titleWidget: Text(
                    "Virtual Classrooms",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,)
                ),
                bodyWidget: Center(
                  child: Text(
                    "A virtual classroom is an online teaching and learning environment where teachers and students can present course materials, engage and interact with one another.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                image: Image.asset("assets/images/splash_2.png",
                  height: 365,
                  width: 335,
                )
            ),
            PageViewModel(
                titleWidget: Text(
                    "Online Learning Materials",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,)
                ),
                bodyWidget: Center(
                  child:  Text(
                      "Accessing learning materials, that is, lecture slides, \nvideo lectures, shared assignments, and forum messages, is the most frequently performed online learning ...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ),
              image: Center(
                child: SizedBox(
                  child: Lottie.asset("assets/splash2.json",
                    height: 565,
                    width: 535,
                  ),
                ),
              ),
            ),
            PageViewModel(
                titleWidget: Text(
                    "Get Notification on Uploads",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,)
                ),
                bodyWidget: Center(
                  child:  Text(
                      "Users would receive notification on any \nupload the lecturer does",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ),
                image: Image.asset("assets/images/splash_10.png",
                  height: 365,
                  width: 335,
                ))
          ],
          onDone: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));
          },
          showSkipButton: true,
          showNextButton: true,
          nextFlex: 1,
          dotsFlex: 2,
          skipFlex: 1,
          animationDuration: 1000,
          curve: Curves.fastOutSlowIn,
          dotsDecorator: DotsDecorator(
              spacing: EdgeInsets.all(5),
              activeColor: Colors.deepPurple,
              // activeSize: Size.square(10),
              // size: Size.square(5),
              activeSize: Size(20, 10),
              size: Size.square(10),
              activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          skip: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          next: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Center(
              child: Icon(
                Icons.navigate_next,
                size: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
          done: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 40,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: Text(
                "Done",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}

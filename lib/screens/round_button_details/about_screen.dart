import 'package:flutter/material.dart';

class About_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Container(
              height: _height * 0.4,
              width: _width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/backimage.jpg",
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('About GCTU',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: _height*0.7,
                width: _width,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(padding: EdgeInsets.only(top: 15, left: 20),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "GCTU - Mobile App",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                TextSpan(
                                  text: "\nkhempent inc",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 232,
                        margin: EdgeInsets.only(top: 15),
                        child: PageView(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/splash_gt.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 2,
                                    ),
                                  ]
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topRight,
                                    stops: [0.2, 0.8],
                                    colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("KNOWLEDGE",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                  ),),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/img_7390.webp'),
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 2,
                                    ),
                                  ]
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topRight,
                                    stops: [0.2, 0.8],
                                    colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("COMES FROM",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                  ),),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/access-roads1.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 2,
                                    ),
                                  ]
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topRight,
                                    stops: [0.2, 0.8],
                                    colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("LEARNING",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(padding: EdgeInsets.only(top: 15, left: 20),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "About GCTU",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\nGhana Communication Technology University (GCTU) is a technology-oriented institution of higher learning, committed to providing an educational experience of the highest quality. Established in November 2005, GCTU was granted accreditation by the National Accreditation Board (NAB) on March 30, 2006, and officially inaugurated on August 15, 2006, gaining full public University status on 13th August 2020. The University is governed by a University Council, supported by the Interim Vice-Chancellor- himself a member of the Council, the Interim Pro-Vice-Chancellor, Interim Registrar, Deans of Faculties, and staff.GCTU has partnerships with Coventry University, UK, Anhalt University of Applied Sciences, Germany, and Ramaiah University of Applied Sciences, India among others. Through these partnerships, the University has placed an increasingly fervent emphasis on the concept of Transnational education, a model which has delivered a host of benefits for students, faculty and the institution as a whole.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(padding: EdgeInsets.only(top: 15, left: 20),
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "History",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                TextSpan(
                                  text: "\n\nThe University is working to carve an outstanding reputation as a leader in teaching excellence and technology, striving to establish its standing as a globally recognized center of research and intellectual creativity. The GCTU Act which confirmed the University’s public status mandates the University to provide state-of-the-art, technology-oriented, and industry-relevant programs in ICT and related areas to aid in the development of students and the nation at large. Currently, GCTU offers world-class Certificate, Diploma, and Degree programs under three core faculties: the Faculty of Engineering, Faculty of Computing and Information Systems, and Faculty of IT Business. The University also runs a Graduate School which delivers postgraduate programs in the areas of Engineering, Business Administration, Management, and Information Communication Technology.Over 8,000 students are pursuing various programs at the University. Courses and programs of the University are carefully structured and taught by seasoned lecturers with modern training equipment in a conducive learning environment. These prepare students for meaningful and rewarding careers which are key to the nation’s economic growth and social well-being.GCTU is committed to excellence in teaching and service. The University takes pride in being a place where students and faculty can pursue knowledge without boundaries, a place where theory and practice combine to produce a better understanding of our world and ourselves. Graduates of GCTU have the theoretical knowledge and hands-on experience that equip them for successful careers in the telecommunications, business, and ICT industries.The University has campuses located at Tesano (main campus), Abeka, Kumasi, and learning centers in Ho, Koforidua, Takoradi, and Nungua. The focus on preparing graduates for the telecommunications and ICT profession is the hallmark of GCTU.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

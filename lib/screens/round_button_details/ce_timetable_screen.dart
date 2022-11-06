
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ce_timetable_screen extends StatefulWidget {
  @override
  _Ce_timetable_screenState createState() => _Ce_timetable_screenState();
}

class _Ce_timetable_screenState extends State<Ce_timetable_screen> with TickerProviderStateMixin {
//Monday Schedule
  List<String> list = [
    "Princples Of Programming",
    "Functional French",
    "Electrical Engineering",
    "English language",
  ];

  List<String> time = [
    "09:00",
    "10:00",
    "12:00",
    "01:00",
  ];

  List<String> meridiem = [
    "AM",
    "AM",
    "PM",
    "PM",
  ];

  List<String> location = [
    "Room B3, Class Block B",
    "Room C5, Class Block C",
    "Eva Vonn Hirsch, Auditorium",
    "Room G6, Class Block G",
  ];

  //Monday Schedule
  List<String> tueslist = [
    "Electrical Engineering",
    "Basic Mechanics",
    "Engineering Maths",
    "Free Period",
  ];

  List<String> tuestime = [
    "09:00",
    "10:00",
    "12:00",
    "01:00",
  ];

  List<String> tuesmeridiem = [
    "AM",
    "AM",
    "PM",
    "PM",
  ];

  List<String> tueslocation = [
    "Room B3, Class Block B",
    "Room C5, Class Block C",
    "Eva Vonn Hirsch, Auditorium",
    "Room G6, Class Block G",
  ];


  late TabController _tabController;
  late TabController _tabController2;

  int bottomTab = 0;

  var key;

  late int currentIndex;
  late int currentIndex2;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController2 = TabController(length: 4, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Container(
              height: 128,
              margin: EdgeInsets.only(top: 16),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text:
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "    "
                                "GCTU",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: "\n "
                                "BCE Timetable",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(
              alignment: Alignment.topLeft,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  )
              ),
              child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 32,
                            left: 5,
                          ),
                          child:
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(text: ("           "
                                  "BCE Course Routine"), style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.deepPurple),),
                              TextSpan(text: ("\n 2020/21 Academic Year(2nd Semester)"),
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 32,
                          child: TabBar(
                            onTap: (newIndex){
                              print(newIndex);
                              setState(() {
                                currentIndex2 = newIndex;
                              });
                            },
                            unselectedLabelStyle: TextStyle(
                              color: Colors.deepPurple.shade300,
                              fontSize: 16,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.deepPurple,
                            isScrollable: true,
                            labelColor: Colors.deepPurple,
                            unselectedLabelColor: Colors.deepPurple.shade300,
                            controller: _tabController2,
                            tabs: <Widget>[
                              Tab(text: "L100",),
                              Tab(text: "L200",),
                              Tab(text: "L300",),
                              Tab(text: "L400",),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24, top: 8),
                          height: 0,
                          child: TabBarView(
                            children: [
                              Placeholder(),
                              Placeholder(),
                              Placeholder(),
                              Placeholder(),
                            ],controller: _tabController2,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 32,
                          child: TabBar(
                            onTap: (newIndex){
                              print(newIndex);
                              setState(() {
                                currentIndex = newIndex;
                              });
                            },
                            unselectedLabelStyle: TextStyle(
                              color: Colors.deepPurple.shade300,
                              fontSize: 16,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.deepPurple,
                            isScrollable: true,
                            labelColor: Colors.deepPurple,
                            unselectedLabelColor: Colors.deepPurple.shade300,
                            controller: _tabController,
                            tabs: <Widget>[
                              Tab(text: "Monday",),
                              Tab(text: "Tuesday",),
                              Tab(text: "Wednesday",),
                              Tab(text: "Thursday",),
                              Tab(text: "Friday",),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24, top: 8),
                          height: 500,
                          child: TabBarView(
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${time[index]}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("${meridiem[index]}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          width: 1,
                                          color: Colors.deepPurple.withOpacity(0.5),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                          Text("${list[index]},"),
                                          Row(children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.deepPurple.shade200,
                                            ),
                                            SizedBox(width: 5,),
                                            Text("${location[index]}",
                                              style: TextStyle(
                                                color: Colors.deepPurple.shade300, fontSize: 13,
                                              ),
                                            )
                                          ],)
                                        ],)
                                      ],
                                    ),
                                  );
                                },
                                itemCount: list.length & time.length & meridiem.length & location.length,
                                separatorBuilder: (context,index){
                                  return Divider();
                                },
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${tuestime[index]}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("${tuesmeridiem[index]}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          width: 1,
                                          color: Colors.deepPurple.withOpacity(0.5),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("${tueslist[index]}"),
                                            Row(children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.deepPurple.shade200,
                                              ),
                                              SizedBox(width: 5,),
                                              Text("${tueslocation[index]}",
                                                style: TextStyle(
                                                  color: Colors.deepPurple.shade300, fontSize: 13,
                                                ),
                                              )
                                            ],)
                                          ],)
                                      ],
                                    ),
                                  );
                                },
                                itemCount: tueslist.length & tuestime.length & tuesmeridiem.length & tueslocation.length,
                                separatorBuilder: (context,index){
                                  return Divider();
                                },
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("07:00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          width: 1,
                                          color: Colors.deepPurple.withOpacity(0.5),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Principles Of Programming,"),
                                            Row(children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.deepPurple.shade200,
                                              ),
                                              SizedBox(width: 5,),
                                              Text("Room B3, Class Block B",
                                                style: TextStyle(
                                                  color: Colors.deepPurple.shade300, fontSize: 13,
                                                ),
                                              )
                                            ],)
                                          ],)
                                      ],
                                    ),
                                  );
                                },
                                itemCount: 5,
                                separatorBuilder: (context,index){
                                  return Divider();
                                },
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("07:00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          width: 1,
                                          color: Colors.deepPurple.withOpacity(0.5),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Principles Of Programming,"),
                                            Row(children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.deepPurple.shade200,
                                              ),
                                              SizedBox(width: 5,),
                                              Text("Room B3, Class Block B",
                                                style: TextStyle(
                                                  color: Colors.deepPurple.shade300, fontSize: 13,
                                                ),
                                              )
                                            ],)
                                          ],)
                                      ],
                                    ),
                                  );
                                },
                                itemCount: 5,
                                separatorBuilder: (context,index){
                                  return Divider();
                                },
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("07:00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepPurple,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 100,
                                          width: 1,
                                          color: Colors.deepPurple.withOpacity(0.5),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Principles Of Programming,"),
                                            Row(children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.deepPurple.shade200,
                                              ),
                                              SizedBox(width: 5,),
                                              Text("Room B3, Class Block B",
                                                style: TextStyle(
                                                  color: Colors.deepPurple.shade300, fontSize: 13,
                                                ),
                                              )
                                            ],)
                                          ],)
                                      ],
                                    ),
                                  );
                                },
                                itemCount: 5,
                                separatorBuilder: (context,index){
                                  return Divider();
                                },
                              ),
                            ],controller: _tabController,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

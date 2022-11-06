import 'package:flutter/material.dart';
import 'package:gctu_official_app/shared/list_item.dart';
import 'package:gctu_official_app/shared/list_widget.dart';


class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {
  
  List<Listitem> listTiles = [

    Listitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2020/12/january-2021.jpg",
      "Revised Calendar 2020-2021 First and Second Semester May Intake",
      "University Relations ",
      "05/06/2021",
    ),
    Listitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/01/guideliness-2021.jpg",
      "This is to kindly notify the University Community that, following the suspension of the nationwide UTAG strike action",
      "University Relations",
      "18/07/2021",
    ),
    Listitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/05/fee-schedule-2021.jpg",
      "Resumption Of Teaching And Related Activities",
      "University Relations",
      "23/07/2021",
    ),
    Listitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/08/gctu-logo-story.jpg",
      "Approved mode of examination for 2020-2021 Academic year",
      "University Relation",
      "22/07/2021",
    ),
    Listitem(
      "https://site.gctu.edu.gh/wp-content/uploads/2021/08/femaleinspires.jpg",
      "Resumption Of Teaching And Related Activities",
      "University Relation",
      "24/07/2021",
    ),

  ];

  late TabController _tabController;

  int bottomTab = 0;

  var key;

  late int currentIndex;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
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
                                "Campus News",
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
                          TextSpan(text: ("     "
                              "General News"), style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.deepPurple),),
                          TextSpan(text: ("\n 2020/21 Academic Year"),
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
                          Tab(text: "Top",),
                          Tab(text: "Popular",),
                          Tab(text: "Trending",),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24, right: 24, top: 8),
                      height: 500,
                      child: TabBarView(
                        children: [
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              child: ListView.builder(
                                itemCount: 5,
                                  itemBuilder: (context, index){
                                  return InkWell(
                                    onTap: (){},
                                    child: listWidget(listTiles[index]),
                                  );
                              }),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index){
                                    return InkWell(
                                      onTap: (){},
                                      child: listWidget(listTiles[index]),
                                    );
                                  }),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0),
                            child: Container(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index){
                                    return InkWell(
                                      onTap: (){},
                                      child: listWidget(listTiles[index]),
                                    );
                                  }),
                            ),
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

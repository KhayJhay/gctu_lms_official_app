import 'package:flutter/material.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: ()=> Navigator.of(context).pop(),
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_left_outlined,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Online Forum",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text("49 members, 0 online")
                              ],)),
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.deepPurple,),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(Icons.person,
                              size: 24,
                              color: Colors.deepPurple,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          ),
              Divider(
                color: Colors.deepPurple.shade100,
                thickness: 1.5,
              ),
              Expanded(
                flex: 20,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height/1.45,
                          child:
                         ListView(
                           children: [
                             SizedBox(height: 20,),
                             Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(radius: 32,
                                     backgroundColor: Colors.deepPurple.shade300,
                                     child: Icon(
                                       Icons.person,
                                       size: 32,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 54,
                                             decoration: BoxDecoration(
                                               border: Border.all(color: Colors.deepPurple.shade300),
                                               borderRadius: BorderRadius.only(
                                                 topRight: Radius.circular(8),
                                                 bottomRight: Radius.circular(8),
                                                 bottomLeft: Radius.circular(8),

                                               )
                                             ),
                                             padding: const EdgeInsets.all(8),
                                             child: Column(
                                               children: [
                                                 Text("How do I create a group here with only my classmates please",
                                                   textAlign: TextAlign.justify,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical: 4),
                                               child: Text("8:30",
                                                 style: TextStyle(
                                                   fontSize: 12,
                                                   color: Colors.deepPurple.shade100,
                                                   fontWeight: FontWeight.bold,
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
                             SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(radius: 32,
                                     backgroundColor: Colors.deepPurple.shade300,
                                     child: Icon(
                                       Icons.person,
                                       size: 32,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 54,
                                             decoration: BoxDecoration(
                                                 border: Border.all(color: Colors.deepPurple.shade300),
                                                 borderRadius: BorderRadius.only(
                                                   topRight: Radius.circular(8),
                                                   bottomRight: Radius.circular(8),
                                                   bottomLeft: Radius.circular(8),

                                                 )
                                             ),
                                             padding: const EdgeInsets.all(8),
                                             child: Column(
                                               children: [
                                                 Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                   textAlign: TextAlign.justify,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical: 4),
                                               child: Text("6:20",
                                                 style: TextStyle(
                                                   fontSize: 12,
                                                   color: Colors.deepPurple.shade100,
                                                   fontWeight: FontWeight.bold,
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
                             SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(radius: 32,
                                     backgroundColor: Colors.deepPurple.shade300,
                                     child: Icon(
                                       Icons.person,
                                       size: 32,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 68,
                                             decoration: BoxDecoration(
                                                 border: Border.all(color: Colors.deepPurple.shade300),
                                                 borderRadius: BorderRadius.only(
                                                   topRight: Radius.circular(8),
                                                   bottomRight: Radius.circular(8),
                                                   bottomLeft: Radius.circular(8),

                                                 )
                                             ),
                                             padding: const EdgeInsets.all(8),
                                             child: Column(
                                               children: [
                                                 Text("Good evening, please is anyone seeing this semester courses on this module because i just see on 1",
                                                   textAlign: TextAlign.justify,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical: 4),
                                               child: Text("10:30",
                                                 style: TextStyle(
                                                   fontSize: 12,
                                                   color: Colors.deepPurple.shade100,
                                                   fontWeight: FontWeight.bold,
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
                             SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(radius: 32,
                                     backgroundColor: Colors.deepPurple.shade300,
                                     child: Icon(
                                       Icons.person,
                                       size: 32,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 54,
                                             decoration: BoxDecoration(
                                                 border: Border.all(color: Colors.deepPurple.shade300),
                                                 borderRadius: BorderRadius.only(
                                                   topRight: Radius.circular(8),
                                                   bottomRight: Radius.circular(8),
                                                   bottomLeft: Radius.circular(8),

                                                 )
                                             ),
                                             padding: const EdgeInsets.all(8),
                                             child: Column(
                                               children: [
                                                 Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                   textAlign: TextAlign.justify,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical: 4),
                                               child: Text("1:50",
                                                 style: TextStyle(
                                                   fontSize: 12,
                                                   color: Colors.deepPurple.shade100,
                                                   fontWeight: FontWeight.bold,
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
                             SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(radius: 32,
                                     backgroundColor: Colors.deepPurple.shade300,
                                     child: Icon(
                                       Icons.person,
                                       size: 32,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 82,
                                             decoration: BoxDecoration(
                                                 border: Border.all(color: Colors.deepPurple.shade300),
                                                 borderRadius: BorderRadius.only(
                                                   topRight: Radius.circular(8),
                                                   bottomRight: Radius.circular(8),
                                                   bottomLeft: Radius.circular(8),

                                                 )
                                             ),
                                             padding: const EdgeInsets.all(8),
                                             child: Column(
                                               children: [
                                                 Text("Good afternoon please I went to pay for resit at the bank but I was told my index has not been active or something on the interpay websitePlease any help",
                                                   textAlign: TextAlign.justify,
                                                 )
                                               ],
                                             ),
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical: 4),
                                               child: Text("4:10",
                                                 style: TextStyle(
                                                   fontSize: 12,
                                                   color: Colors.deepPurple.shade100,
                                                   fontWeight: FontWeight.bold,
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
                           ],
                         ),
                        ),
                        Divider(
                          color: Colors.deepPurple.shade100,
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: 94,
                          child:
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                },
                                icon: Icon(
                                  Icons.attach_file_outlined,
                                ),
                              ),
                              Expanded(child:
                              TextField(
                                controller: _textEditingController,
                                decoration: InputDecoration(hintText: "Write a message"),
                                onSubmitted: (result){
                                  _textEditingController.clear();
                                },
                              )
                              ),
                              IconButton(
                                onPressed: (){
                                },
                                icon: Icon(
                                  Icons.sticky_note_2_outlined,
                                ),
                              ),
                              IconButton(
                                onPressed: (){
                                },
                                icon: Icon(
                                  Icons.mic,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}

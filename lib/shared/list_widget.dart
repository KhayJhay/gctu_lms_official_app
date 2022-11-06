import 'package:flutter/material.dart';

import 'package:gctu_official_app/shared/list_item.dart';

Widget listWidget(Listitem item){
      return Card(
        elevation: 2.0,
        margin: EdgeInsets.only(bottom: 20.0),
        child: Padding(padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 80.0,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(item.imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              SizedBox(width: 5.0,),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.newsTitle,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Row(
                    children: [
                      Icon(Icons.person,),
                      Text(
                        item.author,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.date_range,),
                      Text(
                        item.date,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),

        ),

      );
}

import 'package:flutter/material.dart';
import 'package:gctu_official_app/shared/news_item.dart';

Widget newsWidget(Newsitem newsitem) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: Colors.deepPurple.withOpacity(0.2),
    ),
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.lightGreenAccent,
              ),
              child: Center(
                child: ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                  child: Image.network(newsitem.imgUrl,
                    fit: BoxFit.cover,
                    height: 93,
                  ),
                  ),
                ),
              ),
            ),
          SizedBox(width: 5.0,),
          Expanded(
            flex: 11,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsitem.newsTitle,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Icon(Icons.person,),
                  Text(
                    newsitem.author,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.date_range,),
                  Text(
                    newsitem.date,
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
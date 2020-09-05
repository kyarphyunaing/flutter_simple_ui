import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple UI"),
          leading: IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {
              print("Navigation");
            },
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  print("noti");
                }),
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  print("share");
                }),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("search");
                }),
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/mx-keys.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                color: Colors.greenAccent,
                //height: 180,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Persons",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            child: Image.asset("assets/icons/person_one.png"),
                          ),
                          Container(
                            child: Image.asset("assets/icons/person_two.png"),
                          ),
                          Container(
                            child: Image.asset("assets/icons/person_three.png"),
                          ),
                          Container(
                            child: Image.asset("assets/icons/person_four.png"),
                          ),
                          Container(
                            child: Image.asset("assets/icons/person_five.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}

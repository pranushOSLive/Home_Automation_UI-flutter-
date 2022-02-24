import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sample_project/Widgets/bottomAppBar.dart';
import 'package:flutter_application_1/Sample_project/Widgets/devices.dart';
import 'package:flutter_application_1/Sample_project/Widgets/rooms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('                             tempest',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add_box_outlined,
                size: 24.4,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    height: 100,
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello',
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Moritz',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 165,
                  ),
                  Container(
                      height: 90,
                      width: 165,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(3.0)),
                            IconButton(
                                icon: Icon(
                                  Icons.wb_cloudy_outlined,
                                  color: Colors.yellow,
                                ),
                                onPressed: () {}),
                            Text(
                              '16°C-NewYork',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Rooms(text1: 'Living room'),
                  Rooms(text1: 'Kitchen'),
                  Rooms(text1: 'Bedroom'),
                  Rooms(text1: 'Bathroom'),
                ],
              ),

              Padding(padding: EdgeInsets.all(8.0)),
              Devices(),
              SizedBox(
                height: 150,
                width: 150,
              ), //Next column
            ],
          ),
        ),
      ),
    );
  }
}

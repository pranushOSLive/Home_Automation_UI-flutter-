import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sample_project/Screens/homeScreen.dart';
import 'package:flutter_application_1/Sample_project/Widgets/SwipeArrors.dart';

class introScreen extends StatelessWidget {
  const introScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 485,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('images/new.jpg'),
                    fit: BoxFit.contain)),
          ),
          Container(
              height: 240,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 16.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Smarter \nHomes',
                          style: TextStyle(
                            fontSize: 36.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(''),
                        Text(
                          'Pay securley and safely with finance\nmanagement',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(12.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 400.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0)),
                                  color: Colors.white24),
                              child: Row(
                                children: <Widget>[
                                  Draggable<int>(
                                    axis: Axis.horizontal,
                                    onDragCompleted: () {
                                      return true;
                                    },
                                    child: FlatButton(
                                      height: 56.0,
                                      minWidth: 150,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()));
                                      },
                                      child: Text('Start'),
                                      color: Colors.yellow.shade400,
                                      shape: StadiumBorder(),
                                    ),
                                    feedback: FlatButton(
                                      height: 56.0,
                                      minWidth: 150,
                                      onPressed: () {},
                                      child: Text('Keep Swiping'),
                                      color: Colors.yellow.shade700,
                                      shape: StadiumBorder(),
                                    ),
                                    data: 1,
                                  ),
                                  SizedBox(
                                    height: 56.0,
                                    width: 100,
                                    child: Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.all(20.0)),
                                        SwipeIcons(),
                                      ],
                                    ),
                                  ),
                                  DragTarget<int>(
                                    builder: (
                                      BuildContext context,
                                      List<dynamic> accepted,
                                      List<dynamic> rejected,
                                    ) {
                                      return Container(
                                        height: 56.0,
                                        width: 150,
                                      );
                                    },
                                    onAccept: (int data) {
                                      return Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

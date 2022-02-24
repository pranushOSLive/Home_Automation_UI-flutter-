import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sample_project/Screens/StudioLightScreen.dart';
import 'package:flutter_application_1/Sample_project/Widgets/SwipeArrors.dart';
import 'package:flutter_application_1/Sample_project/Widgets/draggeble.dart';
import 'package:flutter_application_1/help_codes/gesterDetec.dart';

class Devices extends StatefulWidget {
  const Devices({Key key}) : super(key: key);

  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
                height: 125,
                width: 225,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 0.8,
                          offset: Offset(0.0, 0.8))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    color: Colors.white.withOpacity(0.1)),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Draggable2(
                    text2: 'Gate 1',
                  ),
                )),
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
                height: 125,
                width: 225,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 0.8,
                          offset: Offset(0.0, 0.8))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    color: Colors.white.withOpacity(0.1)),
                child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Draggable2(
                      text2: 'Gate 2',
                    ))),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ), //first Row
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            GestureDetector(
              child: Container(
                  height: 125,
                  width: 225,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(1),
                            blurRadius: 0.8,
                            offset: Offset(0.0, 0.8))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: Colors.white.withOpacity(0.1)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.lightbulb_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              '.ON',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.yellow),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(3.0)),
                        Text(
                          'Studio Light',
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.all(3.0)),
                        Text(
                          'Philips Hue',
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.white54),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.pink,
                              ),
                              Padding(padding: EdgeInsets.all(8.0))
                            ])
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudioColors()));
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 125,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 0.8,
                        offset: Offset(0.0, 0.8))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.lightbulb_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '.OFF',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Door Light',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Amazon 1',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(8.0))
                        ])
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ), //Second Row
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 125,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 0.8,
                        offset: Offset(0.0, 0.8))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.free_breakfast,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '.ON',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.yellow),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Coffie Machine',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Philips Smart Brew',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            '05:25-Latte',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(8.0))
                        ])
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 125,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 0.8,
                        offset: Offset(0.0, 0.8))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '.ON',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.yellow),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'A.C.',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'LG Smart',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(8.0))
                        ])
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ), //fouth Row
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 125,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 0.8,
                        offset: Offset(0.0, 0.8))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.tv,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '.OFF',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'LR TV',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Samsung OLED',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(8.0))
                        ])
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 125,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 0.8,
                        offset: Offset(0.0, 0.8))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Colors.white.withOpacity(0.1)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.line_weight_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '.OFF',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Chandelier',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Text(
                      'Philips Chandelier',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(8.0))
                        ])
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        )
      ],
    );
  }
}

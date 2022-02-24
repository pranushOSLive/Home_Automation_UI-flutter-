import 'package:flutter/material.dart';
import 'package:flutter_application_1/help_codes/gesterDetec.dart';

class StudioColors extends StatefulWidget {
  const StudioColors({Key key}) : super(key: key);

  @override
  _StudioColorsState createState() => _StudioColorsState();
}

class _StudioColorsState extends State<StudioColors> {
  String Color1 = "";
  String Color2 = "";
  String Color3 = "";
  String Color4 = "";
  String Color5 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Studio Lights Controller',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.normal)),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 24.4,
                ),
                onPressed: () {})
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black.withOpacity(0.1),
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white54,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.color_lens,
                    color: Colors.white54,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 100)),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.pink.shade400,
                          child: Center(
                            child: Text(
                              'Tap to select',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            colors() {
                              Color1 = "Selected";
                              Color2 = "";
                              Color3 = "";
                              Color4 = "";
                              Color5 = "";
                            }

                            return colors();
                          });
                        },
                      ),
                      Text(
                        '$Color1',
                        style: TextStyle(fontSize: 24.4, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.orange.shade400,
                          child: Center(
                            child: Text(
                              'Tap to select',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            colors() {
                              Color1 = "";
                              Color2 = "Selected";
                              Color3 = "";
                              Color4 = "";
                              Color5 = "";
                            }

                            return colors();
                          });
                        },
                      ),
                      Text(
                        '$Color2',
                        style: TextStyle(fontSize: 24.4, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.purple.shade400,
                          child: Center(
                            child: Text(
                              'Tap to select',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            colors() {
                              Color1 = "";
                              Color2 = "";
                              Color3 = "Selected";
                              Color4 = "";
                              Color5 = "";
                            }

                            return colors();
                          });
                        },
                      ),
                      Text(
                        '$Color3',
                        style: TextStyle(fontSize: 24.4, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              'Tap to select',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            colors() {
                              Color1 = "";
                              Color2 = "";
                              Color3 = "";
                              Color4 = "Selected";
                              Color5 = "";
                            }

                            return colors();
                          });
                        },
                      ),
                      Text(
                        '$Color4',
                        style: TextStyle(fontSize: 24.4, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.red.shade400,
                          child: Center(
                            child: Text(
                              'Tap to select',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            colors() {
                              Color1 = "";
                              Color2 = "";
                              Color3 = "";
                              Color4 = "";
                              Color5 = "Selected";
                            }

                            return colors();
                          });
                        },
                      ),
                      Text(
                        '$Color5',
                        style: TextStyle(fontSize: 24.4, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 150,
            ),
            IconButton(
              icon: Icon(Icons.power_settings_new),
              onPressed: () {
                setState(() {
                  Color1 = "";
                  Color2 = "";
                  Color3 = "";
                  Color4 = "";
                  Color5 = "";
                });
              },
              iconSize: 45.0,
              color: Colors.white54,
              tooltip: 'Power Off',
            )
          ],
        ));
  }
}

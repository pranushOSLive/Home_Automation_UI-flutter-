import 'dart:ui';

import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Project',
      theme: ThemeData(primaryColor: Colors.black)
          .copyWith(scaffoldBackgroundColor: Colors.black),
      home: myHomeState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class myHomeState extends StatefulWidget {
  const myHomeState({
    Key key,
  }) : super(key: key);
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHomeState>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('', style: TextStyle(fontWeight: FontWeight.bold)),
          elevation: 0.0,
          actions: <Widget>[],
        ),
        body: SafeArea(
          child: home(),
        ));
  }
}

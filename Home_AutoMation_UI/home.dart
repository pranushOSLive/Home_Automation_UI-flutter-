import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sample_project/Screens/Intro_Screen.dart';

class home extends StatelessWidget {
  const home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          introScreen(),
        ]);
  }
}

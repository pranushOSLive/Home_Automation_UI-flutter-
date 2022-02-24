import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white.withOpacity(0.1),
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white54,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white54,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.notifications_on,
                color: Colors.white54,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white54,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}

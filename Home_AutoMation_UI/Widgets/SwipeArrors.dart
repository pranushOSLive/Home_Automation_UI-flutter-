import 'package:flutter/material.dart';

class SwipeIcons extends StatelessWidget {
  const SwipeIcons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.arrow_forward_ios,
          size: 14.0,
          color: Colors.white,
        ),
        Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.white70),
        Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.white54),
        Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.white24),
      ],
    );
  }
}

class SwipeIconsReversed extends StatelessWidget {
  const SwipeIconsReversed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.arrow_back_ios,
          size: 14.0,
          color: Colors.white,
        ),
        Icon(Icons.arrow_back_ios, size: 14.0, color: Colors.white70),
        Icon(Icons.arrow_back_ios, size: 14.0, color: Colors.white54),
        Icon(Icons.arrow_back_ios, size: 14.0, color: Colors.white24),
      ],
    );
  }
}

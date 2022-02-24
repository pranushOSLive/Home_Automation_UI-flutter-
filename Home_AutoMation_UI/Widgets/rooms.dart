import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key key, @required this.text1}) : super(key: key);
  final String text1;
  @override
  _RoomsState createState() => _RoomsState('$text1');
}

class _RoomsState extends State<Rooms> {
  _RoomsState(this.text1);
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          color: Colors.white.withOpacity(0.1),
          boxShadow: [BoxShadow(color: Colors.black87)]),
      child: Center(
        child: Text(
          '$text1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

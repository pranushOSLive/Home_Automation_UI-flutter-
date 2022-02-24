import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sample_project/Widgets/SwipeArrors.dart';

class Draggable2 extends StatelessWidget {
  final String text2;
  const Draggable2({Key key, @required this.text2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: drag(
        text1: '$text2',
      ),
    );
  }
}

class drag extends StatefulWidget {
  final String text1;
  const drag({Key key, this.text1}) : super(key: key);

  @override
  _dragState createState() => _dragState('$text1');
}

class _dragState extends State<drag> {
  _dragState(this.text1);
  int num = 0;
  int num1 = 0;
  final String text1;

  lockIcon2(int num) {
    if (num.isOdd) {
      return Icon(
        Icons.vpn_key,
        size: 32.0,
        color: Colors.white,
      );
    } else {
      return Icon(
        Icons.vpn_key,
        size: 32.0,
        color: Colors.white,
      );
    }
  }

  lockIcon(int num) {
    if (num.isOdd) {
      return GestureDetector(
        child: Icon(
          Icons.lock_open_outlined,
          size: 32.0,
          color: Colors.yellow,
        ),
      );
    } else {
      return GestureDetector(
        child: Icon(
          Icons.lock,
          size: 32.0,
          color: Colors.white,
        ),
      );
    }
  }

  void _changetheColor(int num) {
    setState(() {
      lockIcon(num);
    });
  }

  void _changetheColor2(int num1) {
    setState(() {
      lockIcon2(num1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8.0)),
        Text(
          '$text1',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          'LOCKED',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Colors.white54,
          ),
        ),
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<int>(
                data: 1,
                axis: Axis.horizontal,
                child: lockIcon2(num1),
                feedback: Icon(
                  Icons.vpn_key,
                  size: 32,
                  color: Colors.white,
                ),
                childWhenDragging: Icon(
                  Icons.vpn_key,
                  size: 32,
                  color: Colors.white,
                ),
                onDragCompleted: () {
                  _changetheColor2(0);
                }),
            SwipeIcons(),
            DragTarget(
                onAccept: (int data) {
                  num += data;
                  return _changetheColor(num);
                },
                builder: (BuildContext context, List<dynamic> acceptedData,
                        List<dynamic> rejectedData) =>
                    acceptedData.isEmpty ? lockIcon(num) : lockIcon(num))
          ],
        )
      ],
    );
  }
}

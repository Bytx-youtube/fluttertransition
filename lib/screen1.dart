import 'package:flutter/material.dart';
import 'package:flutterpagetransition/screen2.dart';
import 'package:page_transition/page_transition.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              PageTransition(
                child: Screen2(),
                childCurrent: Screen1(),
                duration: Duration(milliseconds: 800),
                reverseDuration: Duration(milliseconds: 800),
                type: PageTransitionType.rightToLeftJoined,
                alignment: Alignment.topLeft,
              ),
            );
          },
          child: Text(
            "Screen1",
          ),
        ),
      ),
    );
  }
}

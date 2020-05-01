import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../widgets/nav.dart';
import '../widgets/social.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: Center(
        child: SizedBox(
          height: 160.0,
          width: 360.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 22.0, bottom: 25.0),
                child: SizedBox(
                  height: 60.0,
                  width: 360.0,
                  child: TypewriterAnimatedTextKit(
                    isRepeatingAnimation: false,
                    speed: Duration(milliseconds: 200),
                    text: ['andreas garvik'],
                    textStyle: TextStyle(
                      color: Colors.amber[500],
                      fontSize: 46,
                    ),
                  ),
                ),
              ),
              Social(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

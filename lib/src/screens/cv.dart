import 'package:flutter/material.dart';
import '../widgets/nav.dart';

class Cv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: SizedBox.expand(
        child: Container(
          margin: EdgeInsets.only(top: 100.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                color: Colors.amber[500],
                fontSize: 18.0,
                height: 2.0,
              ),
              children: [
                TextSpan(
                  text: 'degrees\n',
                ),
                TextSpan(
                  text: 'currently doing bachelor\n\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'experience\n',
                ),
                TextSpan(
                  text: 'sbanken       1 year\n\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'school\n',
                ),
                TextSpan(
                  text: 'queensland university of technology       0.5 years\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text:
                      'western norway university of applied science       3 years\n\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'knowledge\n',
                ),
                TextSpan(
                  text: 'reactjs       great\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'nodejs       great\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'javascript       great\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'flutter       great\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'github      good\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'java       good\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'docker       some\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'golang       some\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'docker       some\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'kubernetes       some\n',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextSpan(
                  text: 'linux      some\n',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

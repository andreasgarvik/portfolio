import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/social.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              child: Text(
                'andreas garvik',
                style: TextStyle(color: Colors.amber[500], fontSize: 50),
              ),
            ),
            Social(),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

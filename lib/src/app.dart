import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andreas Garvik',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'under construction',
                  style: TextStyle(color: Colors.yellow[600], fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.hourglass_empty,
                  color: Colors.yellow[600],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CvTile extends StatelessWidget {
  final String text;
  final double size;
  final String status;

  CvTile(this.text, this.size, this.status);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          color: Colors.amber[500],
          fontSize: size,
          height: 2.0,
        ),
      ),
      trailing: Text(
        status,
        style: TextStyle(
          color: Colors.amber[500],
          fontSize: size,
          height: 2.0,
        ),
      ),
    );
  }
}

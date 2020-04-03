import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String route;

  NavButton(this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18.0),
      child: GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(context, route),
        child: Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
            route,
            style: TextStyle(color: Colors.amber[500], fontSize: 18),
          ),
        ),
      ),
    );
  }
}

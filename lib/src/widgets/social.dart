import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../tools/mouse_cursor.dart';

class Social extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MouseCursor(
            child: GestureDetector(
              onTap: () =>
                  _launchURL("https://www.facebook.com/andreas.garvik"),
              child: Image.asset(
                'assets/facebook.png',
                width: 50.0,
              ),
            ),
          ),
          MouseCursor(
            child: GestureDetector(
              onTap: () => _launchURL("https://github.com/andreasgarvik"),
              child: Image.asset(
                'assets/github.png',
                width: 50.0,
              ),
            ),
          ),
          MouseCursor(
            child: GestureDetector(
              onTap: () => _launchURL(
                  "https://www.linkedin.com/in/andreas-garvik-911330158"),
              child: Image.asset(
                'assets/linkedin.png',
                width: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

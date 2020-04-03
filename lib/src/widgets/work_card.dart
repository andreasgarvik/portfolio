import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCard extends StatelessWidget {
  final String image;
  final String stack;
  final String link;

  WorkCard(this.image, this.stack, this.link);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(link),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              width: 400,
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                stack,
                style: TextStyle(color: Colors.amber[500], fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

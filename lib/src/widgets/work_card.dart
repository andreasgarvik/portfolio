import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../tools/mouse_cursor.dart';

class WorkCard extends StatefulWidget {
  final String image;
  final String stack;
  final String link;

  WorkCard(this.image, this.stack, this.link);

  @override
  _WorkCardState createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller,
      child: MouseCursor(
        child: GestureDetector(
          onTap: () => _launchURL(widget.link),
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  widget.image,
                  width: 400,
                ),
                Container(
                  margin: EdgeInsets.all(25.0),
                  child: Text(
                    widget.stack,
                    style: TextStyle(
                      color: Colors.amber[500],
                      fontSize: 14,
                      wordSpacing: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

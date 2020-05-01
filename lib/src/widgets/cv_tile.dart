import 'package:flutter/material.dart';
import 'package:portfolio/src/models/cv_model.dart';

class CvTile extends StatelessWidget {
  final Animation<double> animation;
  final CvModel model;

  CvTile({Key key, @required this.model, @required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation,
      child: ListTile(
        title: Text(
          model.text,
          style: TextStyle(
            color: Colors.amber[500],
            fontSize: model.size,
            height: 2.0,
          ),
        ),
        trailing: Text(
          model.status,
          style: TextStyle(
            color: Colors.amber[500],
            fontSize: model.size,
            height: 2.0,
          ),
        ),
      ),
    );
  }
}

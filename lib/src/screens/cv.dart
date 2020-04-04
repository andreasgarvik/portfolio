import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/cv_tile.dart';

class Cv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: Center(
        child: SizedBox(
          width: 450,
          child: ListView(
            padding: EdgeInsets.only(top: 100.0),
            children: [
              CvTile('degrees', 18.0, 'status'),
              CvTile('bachelor', 16.0, 'doing'),
              Divider(
                thickness: 2.0,
                height: 40.0,
              ),
              CvTile('experience', 18.0, 'length'),
              CvTile('sbanken', 16.0, '1 year'),
              Divider(
                thickness: 2.0,
                height: 40.0,
              ),
              CvTile('school', 18.0, 'length'),
              CvTile('queensland university of technology', 16.0, '0.5 years'),
              CvTile('western norway university of applied sciences', 16.0,
                  '2.5 years'),
              Divider(
                thickness: 2.0,
                height: 40.0,
              ),
              CvTile('knowledge', 18.0, 'skill'),
              CvTile('reactjs', 16.0, 'great'),
              CvTile('nodejs', 16.0, 'great'),
              CvTile('javascript', 16.0, 'great'),
              CvTile('flutter', 16.0, 'great'),
              CvTile('github', 16.0, 'good'),
              CvTile('java', 16.0, 'good'),
              CvTile('golang', 16.0, 'good'),
              CvTile('docker', 16.0, 'good'),
              CvTile('kubernetes', 16.0, 'some'),
              CvTile('linux', 16.0, 'some'),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/work_card.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 100.0),
          children: <Widget>[
            WorkCard(
              'assets/cloudlyricsapp.png',
              'reactjs nodejs googlecloud docker',
              'https://cloudlyricsapp-m7pao6rimq-uc.a.run.app',
            ),
            WorkCard(
              'assets/siamawanders.png',
              'reactjs firebase',
              'https://siamawanders.com/',
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

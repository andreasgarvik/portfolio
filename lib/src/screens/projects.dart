import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/project_card.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42.0),
          child: ListView(
            padding: EdgeInsets.only(top: 100.0),
            children: <Widget>[
              ProjectCard(
                'assets/cloudlyricsapp.png',
                'reactjs nodejs googlecloud docker',
                'https://cloudlyricsapp-m7pao6rimq-uc.a.run.app',
              ),
              ProjectCard(
                'assets/siamawanders.png',
                'reactjs firebase',
                'https://siamawandersblog.web.app',
              ),
              ProjectCard(
                'assets/garvik-lang.png',
                'golang antlr',
                'https://github.com/andreasgarvik/garvik-lang',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

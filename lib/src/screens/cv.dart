import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/cv_list.dart';

class Cv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nav(),
      body: Center(
        child: CvList(),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/work.dart';
import 'screens/cv.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'portfolio',
      home: Home(),
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == 'home') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Home());
        }
        if (routeSettings.name == 'work') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Work());
        }
        if (routeSettings.name == 'cv') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Cv());
        }
        return null;
      },
    );
  }
}

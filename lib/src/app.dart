import 'package:flutter/material.dart';
import 'screens/info.dart';
import 'screens/projects.dart';
import 'screens/cv.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'portfolio',
      home: Info(),
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == 'info') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Info());
        }
        if (routeSettings.name == 'projects') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Projects());
        }
        if (routeSettings.name == 'cv') {
          return PageRouteBuilder(pageBuilder: (_, a1, a2) => Cv());
        }
        return null;
      },
    );
  }
}

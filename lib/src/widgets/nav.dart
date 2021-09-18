import 'package:flutter/material.dart';
import 'nav_button.dart';

class Nav extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        NavButton('info'),
        NavButton('projects'),
        NavButton('cv'),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

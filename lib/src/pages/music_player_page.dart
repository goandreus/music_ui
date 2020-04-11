import 'package:flutter/material.dart';
import 'package:music_ui/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            CustomAppBar()
          ]
        ),
    );
  }
}
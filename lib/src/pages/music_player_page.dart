import 'package:flutter/material.dart';
import 'package:music_ui/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[CustomAppBar(), ImageDiscoDuration()]),
    );
  }
}

class ImageDiscoDuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[ImageDisco()],
      ),
    );
  }
}

class ImageDisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 250,
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Image(
            image: AssetImage('assets/aurora.jpg'),
          ),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(100)),
          ),
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Color(0xff1C1C25),
                borderRadius: BorderRadius.circular(100)),
          ),
        ]),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Color(0xff484750),
            Color(0xff1E1C24),
          ])),
    );
  }
}

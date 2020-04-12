import 'package:flutter/material.dart';
import 'package:music_ui/src/helpers/helpers.dart';
import 'package:music_ui/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        CustomAppBar(),
        ImageDiscoDuration(),
        TitlePLay(),
        Expanded(
          child: Lyrics(),
        )
      ]),
    );
  }
}

class Lyrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();

    return Container(
      child: ListWheelScrollView(
          physics: BouncingScrollPhysics(),
          itemExtent: 42,
          diameterRatio: 1.5,
          children: lyrics
              .map((line) => Text(line,
                  style: TextStyle(
                      fontSize: 20, color: Colors.white.withOpacity(0.6))))
              .toList()),
    );
  }
}

class TitlePLay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Far Away',
                  style: TextStyle(
                      fontSize: 30, color: Colors.white.withOpacity(0.8))),
              Text('-Breaking Benjamin-',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(0.8))),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            //prevent the button from rising
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Color(0xffF8CB51),
            child: Icon(Icons.play_arrow),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class ImageDiscoDuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 70),
      child: Row(
        children: <Widget>[
          ImageDisco(),
          SizedBox(
            width: 20,
          ),
          BarProgress(),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class BarProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final styles = TextStyle(color: Colors.white.withOpacity(0.4));

    return Container(
      child: Column(children: <Widget>[
        Text('00:00', style: styles),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: <Widget>[
            Container(
              width: 3,
              height: 230,
              color: Colors.white.withOpacity(0.1),
            ),

            //inverse position stack order
            Positioned(
              bottom: 0,
              child: Container(
                width: 3,
                height: 180,
                color: Colors.white.withOpacity(0.8),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text('00:00', style: styles),
      ]),
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

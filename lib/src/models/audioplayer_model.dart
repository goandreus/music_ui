import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;

  AnimationController _controller;
  set controller(AnimationController valor){
    this._controller = valor;
  }

  AnimationController get controller => this._controller;
}
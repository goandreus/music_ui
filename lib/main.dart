import 'package:flutter/material.dart';
import 'package:music_ui/src/models/audioplayer_model.dart';
import 'package:music_ui/src/pages/music_player_page.dart';
import 'package:music_ui/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AudioPlayerModel())
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Music',
          theme: myTheme,
          home: MusicPlayerPage()
      ),
    );
  }
}
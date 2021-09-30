import 'package:flutter/material.dart';
import 'package:music_app/src/models/audioplayer_model.dart';
import 'package:music_app/src/pages/music_player_page.dart';
import 'package:music_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new AudioPlayerModel())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App de musica',
          theme: miTema,
          home: MusicPlayerPage()),
    );
  }
}

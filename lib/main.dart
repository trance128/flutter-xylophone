import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              MusicButton(1, Colors.red, player),
              MusicButton(2, Colors.orange, player),
              MusicButton(3, Colors.amber, player),
              MusicButton(4, Colors.green, player),
              MusicButton(5, Colors.teal, player),
              MusicButton(6, Colors.blue, player),
              MusicButton(7, Colors.purple, player),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  MaterialColor color;
  int number;
  AudioCache player;

  MusicButton(this.number, this.color, this.player);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
            child: Container(),
            onPressed: () {
              player.play('note$number.wav');
            }),
      ),
    );
  }
}

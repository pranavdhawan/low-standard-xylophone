import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(Color col, int a) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(a);
        },),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.purple, 1),
              buildKey(Colors.indigo,2),
              buildKey(Colors.blue,3),
              buildKey(Colors.green,4),
              buildKey(Colors.yellow,5),
              buildKey(Colors.orange,6),
              buildKey(Colors.red,7),
            ],
          ),
        ),
      ),
    );
  }
}

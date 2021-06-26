import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int inNum) {
    final player = AudioCache();
    player.play('note$inNum.wav');
  }

  Expanded buildKey({int soundNumber, Color displayColor}) {
    // the {} let you define the parameters when you input them later when you call
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: displayColor),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
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
              buildKey(soundNumber: 1, displayColor: Colors.red),
              ond//because of the {} in the buildKey you have the soundNumber and displayColor
              buildKey(soundNumber: 2, displayColor: Colors.orange),
              buildKey(soundNumber: 3, displayColor: Colors.yellow),
              buildKey(soundNumber: 4, displayColor: Colors.green),
              buildKey(soundNumber: 5, displayColor: Colors.teal),
              buildKey(soundNumber: 6, displayColor: Colors.blue),
              buildKey(soundNumber: 7, displayColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

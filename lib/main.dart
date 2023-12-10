import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {

  void playSound(int Sound){
    final player = AudioPlayer();
     player.play(AssetSource('note$Sound.wav'));
  }
Expanded why({required MaterialColor color, required int SoundNumber}){
   return  Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color
        ),
        onPressed:() async {
          playSound(SoundNumber);
        },
        child: Text('oww'),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylo Phone'),
        ),
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            why(color: Colors.red, SoundNumber: 1),
            why(color: Colors.blue, SoundNumber: 2),
            why(color: Colors.green, SoundNumber: 3),
            why(color: Colors.yellow, SoundNumber: 4),
            why(color: Colors.blue, SoundNumber: 5),
            why(color: Colors.green, SoundNumber: 6),
            why(color: Colors.yellow, SoundNumber: 7),
          ],
      ),
      ),
      ),
    );
  }
}


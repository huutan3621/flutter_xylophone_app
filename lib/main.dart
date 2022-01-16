import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  //play note function
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? keyColor, int? keyNumber}) {
    return Expanded(
      child: MaterialButton(
        color: keyColor,
        onPressed: () {
          playSound(keyNumber!); //the number of te note
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //setrch to thw witdh of the screen
            children: <Widget>[
              buildKey(keyColor: Colors.purple, keyNumber: 1),
              buildKey(keyColor: Colors.yellow, keyNumber: 2),
              buildKey(keyColor: Colors.blue, keyNumber: 3),
              buildKey(keyColor: Colors.orange, keyNumber: 4),
              buildKey(keyColor: Colors.red, keyNumber: 5),
              buildKey(keyColor: Colors.green, keyNumber: 6),
              buildKey(keyColor: Colors.grey, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

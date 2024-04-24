import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hylophone_2/components/piano_keys.dart';

class Hylophone extends StatefulWidget {
  const Hylophone({super.key});

  @override
  State<Hylophone> createState() => _HylophoneState();
}

class _HylophoneState extends State<Hylophone> {
  final audioPlayers = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff363636),
        title: const Center(child: Text('Hylophone',style: TextStyle(color: Colors.white),)), ),
        body:   Column(
          children: [
            PianoKeys(
              color: Colors.green,
            text: 'do',
            onTap: () {
              audioPlayers.play(AssetSource('nota1.mp3'));
            },),

            PianoKeys(color: Colors.yellow,
            text: 're',onTap: () {
              audioPlayers.play(AssetSource('nota2.mp3'));
            },),

            PianoKeys(color: Colors.red,
            text: 'mi',onTap: () {
              audioPlayers.play(AssetSource('nota3.mp3'));
            },),

            PianoKeys(color: Colors.orange,
            text: 'fa',onTap: () {
              audioPlayers.play(AssetSource('nota4.mp3'));
            },),

            PianoKeys(color: Colors.pink,
            text: 'sol',onTap: () {
              audioPlayers.play(AssetSource('nota5.mp3'));
            },),

            PianoKeys(color: Colors.blue,
            text: 'la',onTap: () {
              audioPlayers.play(AssetSource('nota6.mp3'));
            },),

            PianoKeys(color: Colors.brown,
            text: 'si',onTap: () {
              audioPlayers.play(AssetSource('nota7.mp3'));
            },),

            PianoKeys(color: Colors.green,
            text: 'do',onTap: () {
              audioPlayers.play(AssetSource('nota1.mp3'));
            },),
          ],
        ),
    );
  }
}

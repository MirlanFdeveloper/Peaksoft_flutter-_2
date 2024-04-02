import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano_app_tapshyrma/piano_keys.dart';

class HylophoneView extends StatefulWidget {
  const HylophoneView({super.key});

  @override
  State<HylophoneView> createState() => _HylophoneViewState();
}

class _HylophoneViewState extends State<HylophoneView> {
  final audioPlayers = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff363636),
          ),
          body: Column(
            children: [
              PianoKeys(
                color: Colors.green,
                 text: 'Do',
                  onTap:()=> audioPlayers.play(
                    AssetSource('nota1.mp3'),
                  ),
                  ),
                  PianoKeys(
                    color: Colors.yellow,
                     text: "Re",
                      onTap: (){
                        audioPlayers.play(AssetSource('nota2.mp3'),
                        );
                      },
                       ),
               PianoKeys(
                color: Colors.brown,
                 text: 'Me',
                  onTap: (){
                    audioPlayers.play(AssetSource('nota3.mp3'),
                    );
                  },
                  ),
               PianoKeys(
                color: Colors.orange,
                 text: 'Fa',
                  onTap: (){
                    audioPlayers.play(AssetSource('nota4.mp3'),
                    );
                  }),
                  PianoKeys(
                    color: Colors.red,
                     text: 'Sol',
                      onTap: (){
                        audioPlayers.play(AssetSource('nota5.pm3'),
                        );
                      }),
                      PianoKeys(
                        color: Colors.pink,
                         text: 'La',
                          onTap: (){
                            audioPlayers.play(AssetSource('nota6.mp3'),
                            );
                          }),
                  PianoKeys(
                    color: Colors.blue,
                     text: 'Si',
                      onTap: (){
                        audioPlayers.play(AssetSource('nota7.mp3'),);
                      }),



            ],
          ),
      ),
    );
  }
}
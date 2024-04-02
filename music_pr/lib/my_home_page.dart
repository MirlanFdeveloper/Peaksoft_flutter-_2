import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

 

final players = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          AlaToo(players: players, imageName:'assets/image/bozuy.png',
           onTap:(){players.play(AssetSource('notes/mash-botoy.mp3'),);
          },),  
         AlaToo(players: players,imageName:'assets/image/image.jpg',
          onTap:(){players.play(AssetSource('notes/omur.mp3'),);
         },), 
         
          
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class AlaToo extends StatelessWidget {
   AlaToo({
    super.key,
    required this.players, required this.imageName,required this .onTap,
  });

  final AudioPlayer players;
  final String imageName;
  void Function () onTap; 
  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: onTap,
      child: Image.asset(imageName),
      ),
      );
       
      
    
      
      
    
             
  }
}
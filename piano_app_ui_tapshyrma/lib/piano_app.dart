
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PianoApp extends StatelessWidget {
   PianoApp({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {

     List<String>notes=[
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7',
      'f1',
      'f2',
      'f3',
      'f4',
      ];

final  List<String>nota=[
  'nota1',
  'nota2',
  'nota3',
  'nota4',
  'nota5',
  'nota6',
  'nota7',
  'nota1',
  'nota2',
  'nota3',
  'nota4',
  'nota5',
  'nota6',
  'nota7',
  ];
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container()),
          Expanded(
            flex: 2,
            child: Stack(
               children:[
  ListView.builder(
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: () async {
                    await player.play(
                      AssetSource('${nota[index]}.mp3'),);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    width: 70,
                    height: 200,
                     decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                  
                                ),
                                
                                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(notes[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                                ),
                  ),
                );
              },
              ),

                Positioned(
                  left: 49,
                  child: InkWell(
                    onTap: () {
                      player.play(
                        AssetSource('${nota[0]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            notes[0],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 125,
                  child: InkWell(
                   onTap: () {
                      player.play(
                        AssetSource('${nota[1]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            notes[1],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ), 
                    ),
                  ),
                ),
Positioned(
                  left: 278,
                  child: InkWell(
                    onTap: () {
                      player.play(
                        AssetSource('${nota[2]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text(
                            notes[2],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                                               ),
                                               ),
                                               const SizedBox(height: 10,),
                         ],
                       ),
                    ),
                  ),
                ),
Positioned(
                  left: 355,
                  child: InkWell(
                     onTap: () {
                      player.play(
                        AssetSource('${nota[3]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text(
                            notes[3],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                                               ),
                                               ),
                                               const SizedBox(height: 10,),
                         ],
                       ),
                    ),
                  ),
                ),
Positioned(
                  left: 430,
                  child: InkWell(
                     onTap: () {
                      player.play(
                        AssetSource('${nota[4]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text(
                            notes[4],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                                               ),
                                               ),
                                               const SizedBox(height: 10,),
                         ],
                       ),
                    ),
                  ),
                ),
Positioned(
                  right:  188,
                  child: InkWell(
                     onTap: () {
                      player.play(
                        AssetSource('${nota[5]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text(
                            notes[5],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                                               ),
                                               ),
                                               const SizedBox(height: 10,),
                         ],
                       ),
                    ),
                  ),
                ),
Positioned(
                  right: 112,
                  child: InkWell(
                    onTap: () {
                      player.play(
                        AssetSource('${nota[6]}.mp3'),
                      );
                    },
                    child: Container(
                       width: 50,
                      height: 160,
                      decoration: const BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                         ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            notes[6],
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ), 
                    ),
                  ),
                ),







               
              ]
            ),
          )
        ],
      ),
    );
  }


































  AppBar MyAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Center(
        child: Text('My Piano App',
        style: TextStyle(
          color: Colors.white),)),);
  }
}
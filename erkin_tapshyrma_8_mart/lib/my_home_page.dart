import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    List<String> alisher = [
      'f1',
      'f2',
      'f3',
    ];
    final List<String> notes = [
      'nota1',
      'nota2',
      'nota3',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My home page'),
        ),
        ),
        body: Column(
          children: [
            Expanded(child: Container()),
            Expanded(
              flex: 2,
              child: Stack(children: [
                ListView.builder(
                  itemCount: notes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: () async {
                        await player.play(
                          AssetSource('${notes[index]}.mp3'),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        width: 58,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            Text(
                              alisher[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                              ),
                             const SizedBox(height: 20,) ,
                          ],
                        ),
                      ),
                    );
                  },
                ),
                 Positioned(
                  left: 35,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      player.play(AssetSource('${notes[0]}.mp3'));
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
                          Text(alisher[0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          ),
                          const SizedBox(height: 15,),
                        ],
                      ),
                    ),
                  ),
                  ),
                  Positioned(
                    left: 100,
                    child: InkWell(
                      onTap: () {
                        player.play(AssetSource('${notes[1]}.mp3'));
                      },
                      child: Container(
                        width: 50,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              alisher[1],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            
                            const SizedBox(height: 15,),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
              ),
            ),
          ],
        ),
    );
  }
}
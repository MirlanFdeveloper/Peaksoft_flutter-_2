
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:praktika_04_04_march/piano_keys.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   final audioPlayers = AudioPlayer();
   
  @override
  Widget build(BuildContext context) {

    List<String> alisher = [

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
      'f5',
      'f6',
      'f7',
    ];
    final List<String> notes = [
      'do',
      're',
      'mi',
      'fa',
      'sol',
      'la',
      'si',
       'do',
      're',
      'mi',
      'fa',
      'sol',
      'la',
      'si',
    ];
      
   

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: const Center(
        child: Text("Мини пианино",
        style: TextStyle(color: Colors.pink,
        fontSize: 30,
        fontWeight: FontWeight.w500,),),
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
                itemBuilder: (context,san) {
                  return InkWell(
                    onTap: ()async{
                      await audioPlayers.play(
                        AssetSource('${notes[san]}.mp3'),
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
                        children: [
                          Text(
                            alisher[san],
                            style: const TextStyle(
                              fontSize: 18,
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
                  left: 35,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[0]}.mp3'));
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
                            alisher[0],
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
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[1]}.mp3'));
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
                    ),

   Positioned(
                  left: 220,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[2]}.mp3'));
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
                            alisher[2],
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
                  left: 285,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[3]}.mp3'));
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
                            alisher[3],
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
                  left: 346,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[4]}.mp3'));
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
                            alisher[4],
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
                  left: 470,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[5]}.mp3'));
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
                            alisher[5],
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
                  left: 535,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[6]}.mp3'));
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
                            alisher[6],
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
                  left: 720,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[7]}.mp3'));
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
                            alisher[7],
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
                  left: 780,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      audioPlayers.play(AssetSource('${notes[8]}.mp3'));
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
                            alisher[8],
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
            ],
            ),
          ),


        ],
      ),
    );
  }
    AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      title: Center(
        child: const Text(
          'My Piano App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
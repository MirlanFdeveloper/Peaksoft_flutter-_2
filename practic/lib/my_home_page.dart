import 'package:flutter/material.dart';
import 'package:practic/practic.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),),
        body:  const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Practic(
                color: Colors.yellow,
                text: 'Grey',
                colors: Colors.black,

              
                ),
                SizedBox(width: 10,),
  Practic(
                color: Colors.pink,
                text: 'Grey',
                colors: Colors.black,

              
                ),
                SizedBox(width: 10,),

              ],
            )
          ],
        ),
    );
  }
}

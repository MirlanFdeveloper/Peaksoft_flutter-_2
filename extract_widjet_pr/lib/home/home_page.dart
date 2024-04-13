import 'package:extract_widjet_pr/components/practice.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('MyHomePage')),),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Practice(
                  color:
                  Colors.pink, text: 'Pink', colors: Colors.yellow,
                ),
                SizedBox(width: 10,),
 Practice(
                  color:
                  Colors.black, text: 'black', colors: Colors.white,
                ),
                  SizedBox(width: 10,),
                Practice(
                  color:
                  Colors.orange, text: 'orange', colors: Colors.white,
                ), 
                  SizedBox(width: 10,),  
                               Practice(
                  color:
                  Colors.yellow, text: 'yellow', colors: Colors.white,
                ),




              ],
            ),
          ],
        ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:praktika_sekond_page_6_aprel/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: Colors.yellow,
    title: const Center(child: Text('MyHomePage')),
  ) ,


  body: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Counter app 2',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 20,
        fontWeight: FontWeight.w400),),

        Text(
            counter.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
MaterialButton(
            color: Colors.grey,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              ),
            
            onPressed:  (){
          setState(() {
            counter++;
          });
            }
            ),
            const SizedBox(width: 10,),
MaterialButton(
            color: Colors.grey,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              ),
            
            onPressed:  (){
          setState(() {
            counter--;
          });
            }
            ),

          ],
          ),
      ],
    ),
  ),
  floatingActionButton: FloatingActionButton(
        onPressed: (){
               Navigator.push(
                context, 
                MaterialPageRoute(
                builder: (context)=>SecondPage(
                  secontCounter:counter,),
          ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
        ), 
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ui_tp_19_04/model.dart';
import 'package:ui_tp_19_04/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('MyHomePage'),),
        body: 
            GridView.builder(
              itemCount: turist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
               itemBuilder: (context, index){
               return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage(all:turist[index],)));
                },
                child: Card(
                  child: Column(
                    children: [
                      Text(turist[index].name),
                      Image.network(
                        turist[index].image,
                        height: 137,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
               );
               }
               ),
          
        
    );
  }
}
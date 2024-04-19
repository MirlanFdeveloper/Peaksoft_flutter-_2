import 'package:flutter/material.dart';
import 'package:ui_pr_18_04/barsbek_page.dart';
import 'package:ui_pr_18_04/model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY home page'),),
        body: GridView.builder(
          itemCount: arashan44.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2), 
          itemBuilder: (context,index){
            return InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BarsbekPage(all: arashan44[index]),),);
              },
              child: Card(
                child: Column(
                  children: [
                    Text(arashan44[index].name),
                    Image.network(
                      arashan44[index].image,
                      height: 137,
                      fit: BoxFit.cover,
                      
                    )
                  ],
                ),
              ),
            );
          },
          ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lalafo_2/model.dart';
import 'package:lalafo_2/second_page.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('My home page'),),
        body: GridView.builder(
          itemCount: whole.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
             itemBuilder: (context,index)=>InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=>EihthPages(
                  allName: whole[index],
                  allSurname: whole[index],
                  allage: whole[index],
                  allCity:  whole[index],
                  allMajor: whole[index],
                  allPhoto: whole[index],
                  
                ),
                ),
                );
              },
             ),
             ),
    );
  }
}
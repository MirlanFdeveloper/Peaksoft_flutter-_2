import 'package:flutter/material.dart';
import 'package:test_with_oop_bool/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int san =0;

  void next (){
    setState(() {
      san++;
    });
    if (san ==guotinos.length){
      san=0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar(
  
  title: const Center(child: Text("Тапшырма 7")),
),
body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  
  children: [
   Text(
      guotinos[san].suroo,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400),),


      const SizedBox(height: 133,),
  Center(
    child: Practic(
color: Colors.green,
text: 'Туура',
onTap: () {
  next();
},


    ),
  ),
  const SizedBox(height: 10,),
  Center(
    child: Practic(
    color: Colors.red,
    text: 'Туура эмес',
     onTap: () {
       next();
     },

      
    ),
  ),
  ],
),
    );
  }
}

class Practic extends StatelessWidget {
   const Practic({
    super.key,
     required this.color,
     required this.text, this.onTap, 
    
     
  });
final Color color;
final String text;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: onTap,
      child: Container(
       
        width: 100,
        height: 50,
        color: color,
        child:  Center(child: Text(text)),
      
      
        
        
      
      ),
    );
  }
}
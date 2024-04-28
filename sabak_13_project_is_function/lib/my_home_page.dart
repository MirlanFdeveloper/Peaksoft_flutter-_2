import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // переменный счетчик 
  int  count=0;
  // переменныйды кошуу учун функция
  // void тип кайтарбоочу функция
  // increment функциянын аталышы
  // () функция 
  // {} функциянын денеси
  void incremet(int san){
    // setstate бул bild методду чакырат ошондуктан count++ иштоосу козубузго эмулятордон корсотулот
    setState(() {
    // ++ бири бирине кошуу оператору
      san = count++;
    });
  }
  void result (){
    if (count==10){
     showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Сиздин сан'),
          content: Text(count.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
  void dicrement(int san){
    setState(() {
      san =count--;
    });
  }
  void result2 (){
    if (count==10){
     showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Сиздин сан'),
          content: Text(count.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Center(child: Text('Сабак 13')),),
  body:  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
          color: Colors.black,
          fontSize:20,
          fontWeight: FontWeight.w400, ),
        ),
        ElevatedButton(
          
          onPressed: (){
           incremet(count);
           result();
          }, 
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
          ),
          child: const Text('Increment',
          style: TextStyle(color: Colors.black),),
          ),

          const SizedBox(height: 30,),

  ElevatedButton(
          
          onPressed: (){
           dicrement(count);
           result2();
          }, 
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
          ),
          child: const Text('dicrement',
          style: TextStyle(color: Colors.black),),
          ),
      ],

    ),
  ),
    );
  }
}
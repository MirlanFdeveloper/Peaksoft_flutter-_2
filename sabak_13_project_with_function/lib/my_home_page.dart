import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int count = 0;

  void increment(int san){
    san=count++;
    setState(() {});
    
  }
  void dicrement(int san){
    san=count--;
      setState(() {});
      
    }
    void result(){
      if(count==10){
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                
                  
                onPressed: (){
                  increment(count);
                  result();
                },
               child:  const Text('Increment'),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,

               ) ,
              
               ),
               

              const SizedBox(width: 20,),

               ElevatedButton(
                onPressed: (){
                  dicrement(count);
                  result();
                },
                child: const Text('Dicrement'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                ),
               ),
              ],
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:praktika_sekond_page_6_aprel/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.secontCounter});
  final int secontCounter;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),

      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(

              height:50 ,
              width: 50,
              
              child: Card(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    secontCounter.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                    ),
                ),
              ),
            )
          ],
        ),
        
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (){
               Navigator.push(
                context,
                 MaterialPageRoute(
                builder: (context)=>ThirdPage(
                  counterThirdPage: secontCounter,),
          ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
        ),
    );
  }
}
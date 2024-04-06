import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.counterThirdPage});
final int counterThirdPage;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text('Third page'),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                     counterThirdPage.toString(),
                     style: const TextStyle(color: Colors.black,
                     fontSize: 20,fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}
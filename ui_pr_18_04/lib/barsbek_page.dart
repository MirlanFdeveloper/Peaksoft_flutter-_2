import 'package:flutter/material.dart';
import 'package:ui_pr_18_04/model.dart';

class BarsbekPage extends StatelessWidget {
  const BarsbekPage({super.key, required this.all});
final Family all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(all.name),
        
        ),
        body: const Column(
          children: [
            Text(
              'Барсбек 10 жашта'
            ),
          ],
        ),
    );
  }
}
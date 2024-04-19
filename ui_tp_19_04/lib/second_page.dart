import 'package:flutter/material.dart';
import 'package:ui_tp_19_04/model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.all});
final KG all;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text(all.name),),
        
    );
  }
}
import 'package:flutter/material.dart';

class Practic extends StatelessWidget {
  const Practic({
    super.key,
     required this.color, 
     required this.text,
      required this.colors,
  });
final Color color;
final String text;
final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color:color,
      child: Center(
        child: Text(
          text,
        style: TextStyle(color: colors),),
      ),
      
    );
  }
 
  }

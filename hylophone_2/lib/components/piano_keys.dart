import 'package:flutter/material.dart';

class PianoKeys extends StatelessWidget {
  const PianoKeys({super.key, required this.color, required this.text, required this.onTap});
  final Color color;
  final String text;
  final void Function() onTap; 
  @override
  Widget build(BuildContext context) {
   return 
     InkWell(
              onTap: onTap,
              child: Container(
                color: color,
                width: MediaQuery.of(context).size.width,
                height: 84,
                child: Center(
                  child: Text(
                    text,style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),),),
              ),
            );
     
   
  }

}
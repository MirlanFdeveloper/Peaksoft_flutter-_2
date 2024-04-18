
import 'package:batken_bazar_region_03/model.dart';
import 'package:flutter/material.dart';

class AsanPage extends StatelessWidget {
  const AsanPage({super.key,required this.all});
  final Lalafo all;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(all.name),
        ),
    );
  }
}
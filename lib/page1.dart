import 'dart:math';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1. R A N D O M  C O L O R S'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          color: randomColor(),
          height: 500,
        );
      }),
    );
  }

  Color randomColor() {
    return Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }
}

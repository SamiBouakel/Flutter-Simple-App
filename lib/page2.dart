import 'package:flutter/material.dart';
import 'package:flutter_simple_project/page1.dart';
import 'package:flutter_simple_project/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2. N A V I G A T O R'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page1()));
              },
              child: const Text('Go to page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page3()));
              },
              child: const Text('Go to page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

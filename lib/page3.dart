import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String countdown = '10';

  @override
  void initState() {
    f();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3. C O U N T D O W N'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          //simple countdown widget from 10 to 0
          child: Text(
            countdown,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }

  f() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        countdown = (int.parse(countdown) - 1).toString();
      });
      if (int.parse(countdown) > 0) {
        f();
      }
    });
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_simple_project/page1.dart';
import 'package:flutter_simple_project/page2.dart';
import 'package:flutter_simple_project/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Simple App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.maxFinite,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page1()));
                    },
                    child: const Text('Page 1 (RANDOM COLORS)')),
              ),
              SizedBox(
                height: 50,
                width: double.maxFinite,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page2()));
                    },
                    child: const Text('Page 2 (NAVIGATOR)')),
              ),
              SizedBox(
                height: 50,
                width: double.maxFinite,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page3()));
                    },
                    child: const Text('Page 3 (COUNTDOWN)')),
              ),
            ],
          ),
        ),
        body: Column(
          children: const [
            SizedBox(height: 40),
            Center(
              child: Text(
                "↖ Select Any Page",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

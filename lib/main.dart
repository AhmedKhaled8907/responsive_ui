import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      theme: ThemeData.dark(),
      home: const MediaQueryTest(),
    );
  }
}

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.2,
            width: 200,
            color: Colors.redAccent,
          ),
          Container(
            height: height * 0.2,
            width: 200,
            color: Colors.blueAccent,
          ),
          Container(
            height: height * 0.2,
            width: 200,
            color: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}

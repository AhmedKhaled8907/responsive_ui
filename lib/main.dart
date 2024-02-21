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
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: Column(
        children: [
          const Flexible(
            child: FittedBox(
              child: Icon(
                Icons.home,
                size: 300,
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                color: Colors.greenAccent,
                // height: 150,
                child: const Icon(
                  Icons.horizontal_split_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

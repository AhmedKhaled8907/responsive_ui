import 'dart:developer';

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
      home: const LayoutBuilderEx(),
    );
  }
}

class LayoutBuilderEx extends StatelessWidget {
  const LayoutBuilderEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          log((constraints.maxWidth.floor().toString()));
          if (constraints.maxWidth <= 500) {
            return const MobileLayout();
          } else if (constraints.maxWidth <= 1020) {
            return const TabletLayout();
          } else {
            return const WebLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(number: index + 1),
              ),
            );
          },
          child: Container(
            color: Colors.redAccent,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text('${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 7,
        crossAxisSpacing: 20,
        mainAxisSpacing: 5,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(number: index + 1),
              ),
            );
          },
          child: Container(
            color: Colors.redAccent,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text('${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 7,
        crossAxisSpacing: 20,
        mainAxisSpacing: 5,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(number: index + 1),
              ),
            );
          },
          child: Container(
            color: Colors.redAccent,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text('${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}

class DetailsPage extends StatelessWidget {
  final int number;
  const DetailsPage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
        ),
      ),
    );
  }
}

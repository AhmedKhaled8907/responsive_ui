import 'package:flutter/material.dart';
import 'package:responsive_ui/views/home_view.dart';

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
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          color: Colors.grey[800],
        ),
      ),
      home: const HomeView(),
    );
  }
}

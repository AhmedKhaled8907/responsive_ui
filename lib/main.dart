import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/home_view.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) {
          return const MyApp();
        }),
  );
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

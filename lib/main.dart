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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            // بيحدد الارتفاع على اساس اكبر (طفل) موجود عندك
            // و لكن هى مكلفة في الاستخدام في ناحية الاداء
            // ماتستخدمهاش مع الانميشن
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                      child: const Column(
                        children: [
                          SizedBox(height: 50),
                          SizedBox(height: 50),
                          SizedBox(height: 50),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Expanded(
                          child: Container(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

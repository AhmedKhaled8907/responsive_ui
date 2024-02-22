import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}


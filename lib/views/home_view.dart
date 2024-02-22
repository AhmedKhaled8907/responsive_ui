import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}

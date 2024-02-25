import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        // Expanded(flex: 3, child: Container(color: Colors.redAccent)),
        // Expanded(flex: 2, child: Container(color: Colors.greenAccent)),
      ],
    );
  }
}

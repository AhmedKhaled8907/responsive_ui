import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        const Expanded(flex: 3, child: AllExpenses()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Container(color: const Color.fromARGB(255, 25, 70, 48)),
        ),
      ],
    );
  }
}

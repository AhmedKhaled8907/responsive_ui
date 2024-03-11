import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 32),
        // Expanded(
        //   flex: 2,
        //   child: Container(
        //     color: const Color.fromARGB(255, 25, 70, 48),
        //   ),
        // ),
      ],
    );
  }
}

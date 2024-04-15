import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

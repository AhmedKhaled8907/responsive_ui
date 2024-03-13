import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/my_card/dots_indicator.dart';
import 'package:responsive_ui/views/widgets/my_card/my_card_page_view.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 32),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 32),
            child: Column(
              children: [
                MyCardPageView(),
                SizedBox(height: 16),
                DotsIndicator(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

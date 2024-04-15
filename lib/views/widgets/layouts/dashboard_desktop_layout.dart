import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/income/income_section.dart';

import '../my_card_and_transaction_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                right: 32,
                top: 40,
                bottom: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCardAndTransactionSection(),
                  SizedBox(height: 24),
                  IncomeSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

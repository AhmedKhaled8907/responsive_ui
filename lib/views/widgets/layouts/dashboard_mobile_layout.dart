import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/views/widgets/income/income_section.dart';
import 'package:responsive_ui/views/widgets/my_card_and_transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 20),
          MyCardAndTransactionSection(),
          SizedBox(height: 20),
          IncomeSection(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

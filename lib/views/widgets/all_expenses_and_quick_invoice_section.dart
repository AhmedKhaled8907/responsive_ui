import 'package:flutter/material.dart';

import 'all_expenses/all_expenses.dart';
import 'quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 24),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}

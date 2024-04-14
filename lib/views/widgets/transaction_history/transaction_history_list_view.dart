import 'package:flutter/material.dart';
import 'package:responsive_ui/models/transaction_model.dart';
import 'package:responsive_ui/views/widgets/transaction_history/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactionitems.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => TransactionItem(
        transactionModel: transactionitems[index],
      ),
    );
  }
}

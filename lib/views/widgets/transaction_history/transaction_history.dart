import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/transaction_history/transaction_history_list_view.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 10),
        Text(
          '13 April 2022',
          style: AppStyles.styleRegular14,
        ),
        SizedBox(height: 16),
        TransactionHistoryListView(),
      ],
    );
  }
}

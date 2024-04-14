import 'package:flutter/material.dart';
import 'package:responsive_ui/models/transaction_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xfffafafa),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16.copyWith(fontSize: 14),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular12,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold18.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}

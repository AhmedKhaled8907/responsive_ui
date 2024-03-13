import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See All',
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          '13 April 2022',
          style: AppStyles.styleRegular14,
        ),
        const SizedBox(height: 16),
        
      ],
    );
  }
}

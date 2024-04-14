import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/transaction_history/transaction_history.dart';

import 'custom_background_container.dart';
import 'my_card/my_card_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          SizedBox(height: 10),
          Divider(
            color: Color(0xffF1F1F1),
          ),
          SizedBox(height: 10),
          TransactionHistory(),
        ],
      ),
    );
  }
}

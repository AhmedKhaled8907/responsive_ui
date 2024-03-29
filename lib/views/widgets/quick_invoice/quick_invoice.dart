import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_background_container.dart';
import 'package:responsive_ui/views/widgets/quick_invoice/latest_transaction_section.dart';
import 'package:responsive_ui/views/widgets/quick_invoice/quick_invoice_header.dart';

import 'quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

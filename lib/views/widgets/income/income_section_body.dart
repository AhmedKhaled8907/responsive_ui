import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/income/detailed_income_chart.dart';

import '../../../utils/size_config.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktop
        ? const DetailedIncomeChart()
        : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}

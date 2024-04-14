import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/views/widgets/custom_background_container.dart';
import 'package:responsive_ui/views/widgets/income/income_section_header.dart';

import 'income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 16),
          Row(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: IncomeChart(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

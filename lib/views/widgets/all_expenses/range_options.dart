import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(width: 18),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 24,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}

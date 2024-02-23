import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_item.dart';
import 'package:responsive_ui/views/widgets/custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16).copyWith(right: 16),
      child: const Column(
        children: [
          Expanded(flex: 2, child: CustomItem()),
          SizedBox(height: 16),
          Expanded(child: CustomItem2()),
        ],
      ),
    );
  }
}

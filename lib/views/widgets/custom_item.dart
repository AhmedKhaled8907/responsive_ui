import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[600],
      ),
    );
  }
}

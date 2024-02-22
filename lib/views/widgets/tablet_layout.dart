import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_sliver_list_view.dart';
import 'package:responsive_ui/views/widgets/custom_tablet_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: const CustomScrollView(
        slivers: [
          CustomTabletListView(),
          CustomSliverListView(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_sliver_grid.dart';
import 'package:responsive_ui/views/widgets/custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: const CustomScrollView(
        slivers: [
          CustomSliverGrid(),
          CustomSliverListView(),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_item.dart';

class CustomTabletListView extends StatelessWidget {
  const CustomTabletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: AspectRatio(
                aspectRatio: 1,
                child: CustomItem(),
              ),
            );
          },
        ),
      ),
    );
  }
}

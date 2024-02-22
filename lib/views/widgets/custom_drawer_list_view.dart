import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/views/widgets/custom_drawer_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerList.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomDrawerItem(
          drawerItemModel: drawerList[index],
        );
      },
    );
  }
}

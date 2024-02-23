import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        size: 36,
        color: Colors.grey[800],
      ),
      horizontalTitleGap: 24,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title.toUpperCase(),
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

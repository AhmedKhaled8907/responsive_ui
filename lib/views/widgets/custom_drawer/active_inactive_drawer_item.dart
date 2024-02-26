import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class InActiceDrawerItem extends StatelessWidget {
  const InActiceDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Expanded(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleRegular16,
          ),
        ),
      ),
    );
  }
}

class ActiceDrawerItem extends StatelessWidget {
  const ActiceDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Expanded(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleBold16,
          ),
        ),
      ),
      trailing: Container(
        width: 4,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../models/drawer_item_model.dart';
import '../../../utils/app_images.dart';
import 'active_inactive_drawer_item.dart';

class DrawerBottomSection extends StatelessWidget {
  const DrawerBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox(height: 20)),
        InActiceDrawerItem(
          drawerItemModel: DrawerItemModel(
            image: Assets.imagesSettings,
            title: 'Settings',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: InActiceDrawerItem(
            drawerItemModel: DrawerItemModel(
              image: Assets.imagesLogout,
              title: 'Logout account',
            ),
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}

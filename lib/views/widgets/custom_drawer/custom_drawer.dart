import 'package:flutter/material.dart';
import 'package:responsive_ui/models/user_info_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/user_info_list_tile.dart';

import 'drawer_bottom_section.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 16),
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerBottomSection(),
          ),
        ],
      ),
    );
  }
}

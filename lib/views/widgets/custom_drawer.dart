import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/views/widgets/drawer_item.dart';
import 'package:responsive_ui/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: draweritemsList.length,
            itemBuilder: (BuildContext context, int index) {
              return DrawerItem(
                drawerItemModel: draweritemsList[index],
              );
            },
          ),
        ],
      ),
    );
  }
}

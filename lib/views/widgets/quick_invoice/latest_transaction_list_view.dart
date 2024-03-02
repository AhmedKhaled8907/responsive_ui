import 'package:flutter/material.dart';
import 'package:responsive_ui/models/user_info_model.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfoList.length,
        itemBuilder: (BuildContext context, int index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: userInfoList[index],
            ),
          );
        },
      ),
    );
  }
}

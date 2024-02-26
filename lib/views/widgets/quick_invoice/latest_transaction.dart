import 'package:flutter/material.dart';
import 'package:responsive_ui/models/user_info_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
      ],
    );
  }
}

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userInfoList.length,
      itemBuilder: (BuildContext context, int index) {
        return UserInfoListTile(
          userInfoModel: userInfoList[index],
        );
      },
    );
  }
}

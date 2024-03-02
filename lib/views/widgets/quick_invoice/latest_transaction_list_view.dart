import 'package:flutter/material.dart';
import 'package:responsive_ui/models/user_info_model.dart';
import 'package:responsive_ui/views/widgets/custom_drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    // we use this method if we have a horizontal list of items
    // and a limited number of items
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoList
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: e),
                ))
            .toList(),
      ),
    );

    //  SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userInfoList.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: userInfoList[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

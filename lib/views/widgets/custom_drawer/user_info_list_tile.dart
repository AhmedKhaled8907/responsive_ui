import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: const Color(0xfffafafa),
        shape: const StadiumBorder(),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: AppStyles.styleSemiBold16,
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              subtitle,
              style: AppStyles.styleRegular12,
            ),
          ),
        ),
      ),
    );
  }
}

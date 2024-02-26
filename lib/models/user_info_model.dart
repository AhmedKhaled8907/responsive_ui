import 'package:responsive_ui/utils/app_images.dart';

class UserInfoModel {
  final String title, subtitle, image;

  UserInfoModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<UserInfoModel> userInfoList = [
  UserInfoModel(
    title: 'Madrani Andi',
    subtitle: 'Madraniadi20@gmail',
    image: Assets.imagesAvatar1,
  ),
  UserInfoModel(
    title: 'Josua Nunito',
    subtitle: 'Josh Nunito@gmail.com',
    image: Assets.imagesAvatar2,
  ),
  UserInfoModel(
    title: 'Madrani Andi',
    subtitle: 'Madraniadi20@gmail',
    image: Assets.imagesAvatar1,
  ),
];

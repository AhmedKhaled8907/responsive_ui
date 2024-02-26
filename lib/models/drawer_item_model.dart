import 'package:responsive_ui/utils/app_images.dart';

class DrawerItemModel {
  final String image, title;

  DrawerItemModel({
    required this.image,
    required this.title,
  });
}

List<DrawerItemModel> draweritemsList = [
  DrawerItemModel(
    image: Assets.imagesDashboard,
    title: 'Dashboard',
  ),
  DrawerItemModel(
    image: Assets.imagesMyTransctions,
    title: 'My Transaction',
  ),
  DrawerItemModel(
    image: Assets.imagesStatistics,
    title: 'Statistics',
  ),
  DrawerItemModel(
    image: Assets.imagesWalletAccount,
    title: 'Wallet Account',
  ),
  DrawerItemModel(
    image: Assets.imagesMyInvestments,
    title: 'My Investments',
  ),
];

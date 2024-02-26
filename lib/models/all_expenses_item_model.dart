import 'package:responsive_ui/utils/app_images.dart';

class AllExpensesItemModel {
  final String image, title, date;
  final String price;

  AllExpensesItemModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });
}

List<AllExpensesItemModel> items = [
  AllExpensesItemModel(
    image: Assets.imagesBalance,
    title: 'Balance',
    date: 'April 2022',
    price: r'$20.225',
  ),
  AllExpensesItemModel(
    image: Assets.imagesIncome,
    title: 'Income',
    date: 'April 2022',
    price: r'$20.225',
  ),
  AllExpensesItemModel(
    image: Assets.imagesExpenses,
    title: 'Expenses',
    date: 'April 2022',
    price: r'$20.225',
  ),
];

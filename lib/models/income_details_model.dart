import 'package:flutter/cupertino.dart';

class IncomeDetailsModel {
  final Color color;
  final String title, value;

  IncomeDetailsModel({
    required this.color,
    required this.title,
    required this.value,
  });
}

List<IncomeDetailsModel> incomeItemsList = [
  IncomeDetailsModel(
    color: const Color(0xff208CC8),
    title: 'Design service',
    value: '40%',
  ),
  IncomeDetailsModel(
    color: const Color(0xff4EB7F2),
    title: 'Design product',
    value: '25%',
  ),
  IncomeDetailsModel(
    color: const Color(0xff064061),
    title: 'Product royalty',
    value: '20%',
  ),
  IncomeDetailsModel(
    color: const Color(0xffE2DECD),
    title: 'Other',
    value: '22%',
  ),
];

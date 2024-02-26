import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all_expenses_item_model.dart';
// ignore: unused_import
import 'package:responsive_ui/utils/app_images.dart';

import 'inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  final AllExpensesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}

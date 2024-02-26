import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all_expenses_item_model.dart';
import 'package:responsive_ui/views/widgets/all_expenses/all_expenses_item.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(height: 16),
          // we can't use listView.builder here because we don't want to give it
          // a fixed height and width .
          Row(
              children:

                  // we can't use map here because we don't have access to index
                  // items.map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
                  // .toList(),

                  // so we use asMap to get access to the index to give padding to
                  // a sepecific item of the list
                  items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;

            return Expanded(
              child: Padding(
                padding: index == 1
                    ? const EdgeInsets.symmetric(horizontal: 12)
                    : EdgeInsets.zero,
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: false,
                ),
              ),
            );
          }).toList()),
        ],
      ),
    );
  }
}

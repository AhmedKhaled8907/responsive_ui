import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all_expenses_item_model.dart';
import 'package:responsive_ui/views/widgets/all_expenses/all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // we can't use listView.builder here because we don't want to give it
        // a fixed height and width .
        // we can't use map here because we don't have access to index
        // items.map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
        // .toList(),

        // so we use asMap to get access to the index to give padding to
        // a sepecific item of the list
        Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(horizontal: 6)
                  : EdgeInsets.zero,
              child: AllExpensesItem(
                itemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

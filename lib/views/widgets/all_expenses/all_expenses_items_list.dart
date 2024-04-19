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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isActive: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isActive: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isActive: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }
}

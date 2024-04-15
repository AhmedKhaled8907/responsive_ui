import 'package:flutter/material.dart';
import 'package:responsive_ui/models/income_details_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: incomeItemsList.length,
          itemBuilder: (context, index) => IncomeItemDetails(
            incomeDetailsModel: incomeItemsList[index],
          ),
        ),
      ],
    );
  }
}

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({
    super.key,
    required this.incomeDetailsModel,
  });

  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeDetailsModel.color,
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

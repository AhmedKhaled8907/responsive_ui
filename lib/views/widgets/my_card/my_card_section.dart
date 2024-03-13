import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../custom_background_container.dart';
import 'dots_indicator.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(height: 20),
          MyCardPageView(),
          SizedBox(height: 16),
          DotsIndicator(),
        ],
      ),
    );
  }
}

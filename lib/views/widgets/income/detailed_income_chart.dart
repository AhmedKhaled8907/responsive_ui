import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/models/income_details_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.75,
      child: PieChart(getPieChartData()),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? incomeItemsList[0].title : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 55 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? incomeItemsList[1].title : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 55 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? incomeItemsList[2].title : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 55 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? incomeItemsList[3].title : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          value: 22,
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 55 : 50,
        ),
      ],
    );
  }
}

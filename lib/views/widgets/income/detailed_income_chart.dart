import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/models/income_details_model.dart';

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
          title: incomeItemsList[0].title,
          // showTitle: false,
          titlePositionPercentageOffset: 0.5,
          value: 40,
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 55 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 55 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 55 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 55 : 50,
        ),
      ],
    );
  }
}

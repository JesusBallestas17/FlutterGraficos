import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart26 extends StatelessWidget {
  const Chart26({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
  spots: FictitiousData.monthlyIncomes
      .map((e) => FlSpot(e.id.toDouble(), e.amount))
      .toList(),
  isCurved: false,
  color: Colors.pink,
  barWidth: 3,
  dashArray: [10, 5],
),
        ],
      ),
    );
  }
}
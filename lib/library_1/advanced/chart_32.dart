import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart32 extends StatelessWidget {
  const Chart32({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BarChart(
          BarChartData(
            maxY: 100, minY: 0,
            titlesData: const FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 100, width: 40, color: Colors.grey.shade300)]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 100, width: 40, color: Colors.grey.shade300)]),
            ],
          )
        ),
        BarChart(
          BarChartData(
            maxY: 100, minY: 0,
            titlesData: const FlTitlesData(show: false),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(show: false),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 65, width: 20, color: Colors.purpleAccent)]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 85, width: 20, color: Colors.purpleAccent)]),
            ],
          )
        )
      ],
    );
  }
}
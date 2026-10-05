import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart20 extends StatelessWidget {
  const Chart20({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        minY: -50, maxY: 100,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: FlGridData(show: true, checkToShowHorizontalLine: (val) => val == 0),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 80, color: Colors.green)]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: -30, color: Colors.red)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 60, color: Colors.green)]),
          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: -10, color: Colors.red)]),
        ],
      ),
    );
  }
}
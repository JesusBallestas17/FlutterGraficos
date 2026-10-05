import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart21 extends StatelessWidget {
  const Chart21({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 100, minY: 0,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(fromY: 20, toY: 60, color: Colors.cyan, width: 25)]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(fromY: 40, toY: 90, color: Colors.cyan, width: 25)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(fromY: 10, toY: 50, color: Colors.cyan, width: 25)]),
        ],
      ),
    );
  }
}
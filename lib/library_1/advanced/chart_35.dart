import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart35 extends StatelessWidget {
  const Chart35({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 100,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 60, width: 30, color: Colors.transparent, borderSide: const BorderSide(color: Colors.indigo, width: 3))]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 90, width: 30, color: Colors.transparent, borderSide: const BorderSide(color: Colors.indigo, width: 3))]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 45, width: 30, color: Colors.transparent, borderSide: const BorderSide(color: Colors.indigo, width: 3))]),
        ],
      ),
    );
  }
}
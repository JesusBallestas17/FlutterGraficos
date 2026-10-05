import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart25 extends StatelessWidget {
  const Chart25({super.key});

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
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 80,
                width: 30,
                gradient: const LinearGradient(colors: [Colors.purple, Colors.pink], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                rodStackItems: [
                  BarChartRodStackItem(0, 30, Colors.transparent),
                  BarChartRodStackItem(30, 80, Colors.black12),
                ]
              )
            ]
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 95, width: 30,
                gradient: const LinearGradient(colors: [Colors.indigo, Colors.cyan], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              )
            ]
          )
        ],
      ),
    );
  }
}
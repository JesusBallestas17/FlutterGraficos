import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart29 extends StatelessWidget {
  const Chart29({super.key});

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
            barsSpace: 2,
            barRods: [
              BarChartRodData(toY: 40, width: 6, color: Colors.red),
              BarChartRodData(toY: 60, width: 6, color: Colors.blue),
              BarChartRodData(toY: 50, width: 6, color: Colors.green),
              BarChartRodData(toY: 80, width: 6, color: Colors.orange),
              BarChartRodData(toY: 70, width: 6, color: Colors.purple),
            ]
          ),
          BarChartGroupData(
            x: 1,
            barsSpace: 2,
            barRods: [
              BarChartRodData(toY: 50, width: 6, color: Colors.red),
              BarChartRodData(toY: 70, width: 6, color: Colors.blue),
              BarChartRodData(toY: 40, width: 6, color: Colors.green),
              BarChartRodData(toY: 90, width: 6, color: Colors.orange),
              BarChartRodData(toY: 60, width: 6, color: Colors.purple),
            ]
          )
        ],
      ),
    );
  }
}
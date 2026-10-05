import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart24 extends StatelessWidget {
  const Chart24({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 30), FlSpot(1, 45), FlSpot(2, 60)],
            isCurved: true, color: Colors.blue, barWidth: 3,
          ),
          LineChartBarData(
            spots: const [FlSpot(2, 60), FlSpot(3, 80), FlSpot(4, 90)],
            isCurved: true, color: Colors.grey, barWidth: 3, dashArray: [10, 5],
          ),
        ],
      ),
    );
  }
}
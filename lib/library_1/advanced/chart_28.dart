import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart28 extends StatelessWidget {
  const Chart28({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(spots: const [FlSpot(0, 80), FlSpot(1, 90), FlSpot(2, 85)], color: Colors.green),
          LineChartBarData(spots: const [FlSpot(0, 50), FlSpot(1, 60), FlSpot(2, 55)], color: Colors.amber),
          LineChartBarData(spots: const [FlSpot(0, 20), FlSpot(1, 30), FlSpot(2, 25)], color: Colors.red),
        ],
        betweenBarsData: [
          BetweenBarsData(fromIndex: 0, toIndex: 1, color: Colors.lightGreen.withValues(alpha: 0.2)),
          BetweenBarsData(fromIndex: 1, toIndex: 2, color: Colors.orange.withValues(alpha: 0.2)),
        ],
      ),
    );
  }
}
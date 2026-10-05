import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart19 extends StatelessWidget {
  const Chart19({super.key});

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
            spots: const [FlSpot(0, 10), FlSpot(1, 10), FlSpot(2, 30), FlSpot(3, 30), FlSpot(4, 50)],
            isStepLineChart: true,
            color: Colors.orange,
            barWidth: 4,
            dotData: const FlDotData(show: true),
          ),
        ],
      ),
    );
  }
}
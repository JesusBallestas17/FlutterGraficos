import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart31 extends StatelessWidget {
  const Chart31({super.key});

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
            spots: const [FlSpot(0, 10), FlSpot(1, 40), FlSpot(2, 30), FlSpot(3, 80)],
            isCurved: true,
            color: Colors.blue,
            barWidth: 6,
            shadow: const Shadow(color: Colors.black45, blurRadius: 10, offset: Offset(0, 8)),
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart23 extends StatelessWidget {
  const Chart23({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0, maxY: 100,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 20), FlSpot(1, 60), FlSpot(2, 40), FlSpot(3, 90)],
            isCurved: true,
            color: Colors.black,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.green.withValues(alpha: 0.3),
              cutOffY: 50,
              applyCutOffY: true,
            ),
            aboveBarData: BarAreaData(
              show: true,
              color: Colors.red.withValues(alpha: 0.3),
              cutOffY: 50,
              applyCutOffY: true,
            ),
          )
        ],
      ),
    );
  }
}
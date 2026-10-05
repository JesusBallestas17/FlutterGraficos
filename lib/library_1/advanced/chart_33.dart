import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart33 extends StatelessWidget {
  const Chart33({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0, maxY: 100,
        rangeAnnotations: RangeAnnotations(
          verticalRangeAnnotations: [
            VerticalRangeAnnotation(x1: 1.8, x2: 2.2, color: Colors.yellow.withValues(alpha: 0.3)),
          ]
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 40), FlSpot(1, 50), FlSpot(2, 90), FlSpot(3, 70)],
            color: Colors.blueAccent, barWidth: 3,
          )
        ],
      ),
    );
  }
}
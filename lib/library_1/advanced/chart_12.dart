import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart12 extends StatelessWidget {
  const Chart12({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0,
        maxY: 100,
        rangeAnnotations: RangeAnnotations(
          horizontalRangeAnnotations: [
            HorizontalRangeAnnotation(y1: 0, y2: 30, color: Colors.red.withValues(alpha: 0.2)),
            HorizontalRangeAnnotation(y1: 30, y2: 70, color: Colors.orange.withValues(alpha: 0.2)),
            HorizontalRangeAnnotation(y1: 70, y2: 100, color: Colors.green.withValues(alpha: 0.2)),
          ],
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 20), FlSpot(1, 50), FlSpot(2, 40), FlSpot(3, 80), FlSpot(4, 90)],
            isCurved: false,
            color: Colors.blueAccent,
            barWidth: 4,
          ),
        ],
      ),
    );
  }
}

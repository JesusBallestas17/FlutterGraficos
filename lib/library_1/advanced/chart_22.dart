import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart22 extends StatelessWidget {
  const Chart22({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        minX: 0, maxX: 10, minY: 0, maxY: 100,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        scatterSpots: [
          ScatterSpot(2, 40, dotPainter: FlDotCirclePainter(radius: 20, color: Colors.pinkAccent.withValues(alpha: 0.6))),
          ScatterSpot(5, 80, dotPainter: FlDotCirclePainter(radius: 35, color: Colors.blueAccent.withValues(alpha: 0.6))),
          ScatterSpot(8, 30, dotPainter: FlDotCirclePainter(radius: 15, color: Colors.orangeAccent.withValues(alpha: 0.6))),
        ],
      ),
    );
  }
}
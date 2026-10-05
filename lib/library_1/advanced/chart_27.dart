import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart27 extends StatelessWidget {
  const Chart27({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BarChart(
          BarChartData(
            maxY: 100, minY: 0,
            titlesData: const FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 60, color: Colors.blueGrey)]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 80, color: Colors.blueGrey)]),
              BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 40, color: Colors.blueGrey)]),
            ],
          )
        ),
        ScatterChart(
          ScatterChartData(
            minX: 0, maxX: 2, minY: 0, maxY: 100,
            titlesData: const FlTitlesData(show: false),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(show: false),
            scatterSpots: [
              ScatterSpot(0, 70, dotPainter: FlDotCrossPainter(color: Colors.red, width: 4, size: 16)),
              ScatterSpot(1, 75, dotPainter: FlDotCrossPainter(color: Colors.red, width: 4, size: 16)),
              ScatterSpot(2, 50, dotPainter: FlDotCrossPainter(color: Colors.red, width: 4, size: 16)),
            ],
          )
        )
      ],
    );
  }
}
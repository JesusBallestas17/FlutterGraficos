import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart36 extends StatelessWidget {
  const Chart36({super.key});

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
            rangeAnnotations: RangeAnnotations(
              horizontalRangeAnnotations: [HorizontalRangeAnnotation(y1: 70, y2: 100, color: Colors.green.withValues(alpha: 0.1))]
            ),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 40, color: Colors.blueGrey, width: 16)]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 60, color: Colors.blueGrey, width: 16)]),
              BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 50, color: Colors.blueGrey, width: 16)]),
              BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 90, color: Colors.blueGrey, width: 16)]),
            ],
          )
        ),
        LineChart(
          LineChartData(
            maxY: 100, minY: 0,
            titlesData: const FlTitlesData(show: false),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(show: false),
            lineBarsData: [
              LineChartBarData(
                spots: const [FlSpot(0, 30), FlSpot(1, 65), FlSpot(2, 45), FlSpot(3, 95)],
                color: Colors.amber, barWidth: 4, isCurved: true,
                dotData: FlDotData(show: true, getDotPainter: (s,p,b,i) => FlDotCirclePainter(radius: 5, color: Colors.white, strokeWidth: 2, strokeColor: Colors.amber)),
              )
            ],
          )
        )
      ],
    );
  }
}
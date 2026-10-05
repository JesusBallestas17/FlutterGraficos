import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart14 extends StatelessWidget {
  const Chart14({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScatterChart(
          ScatterChartData(
            minX: 0, maxX: 6, minY: 0, maxY: 100,
            titlesData: const FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            scatterSpots: [
              ScatterSpot(1, 20, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
              ScatterSpot(2, 50, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
              ScatterSpot(3, 45, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
              ScatterSpot(4, 70, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
              ScatterSpot(5, 90, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
            ],
          )
        ),
        LineChart(
          LineChartData(
            minX: 0, maxX: 6, minY: 0, maxY: 100,
            titlesData: const FlTitlesData(show: false),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(show: false),
            lineBarsData: [
              LineChartBarData(
                spots: const [FlSpot(1, 20), FlSpot(5, 90)], // Línea de tendencia lineal simple
                isCurved: false,
                color: Colors.redAccent.withValues(alpha: 0.5),
                barWidth: 4,
                dashArray: [10, 5],
                dotData: const FlDotData(show: false),
              )
            ]
          )
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart10 extends StatelessWidget {
  const Chart10({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterTouchData: ScatterTouchData(
          enabled: true,
          touchTooltipData: ScatterTouchTooltipData(
            getTooltipColor: (spot) => Colors.purpleAccent,
            getTooltipItems: (touchedSpot) {
              return ScatterTooltipItem(
                'Venta\nX: \${touchedSpot.x}\nY: \${touchedSpot.y}',
                textStyle: const TextStyle(color: Colors.white),
              );
            },
          ),
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: true),
        scatterSpots: [
          ScatterSpot(1, 4, dotPainter: FlDotCirclePainter(radius: 6, color: Colors.blue)),
          ScatterSpot(2, 5, dotPainter: FlDotCirclePainter(radius: 8, color: Colors.red)),
          ScatterSpot(3, 3, dotPainter: FlDotCirclePainter(radius: 5, color: Colors.green)),
          ScatterSpot(4, 7, dotPainter: FlDotCirclePainter(radius: 10, color: Colors.orange)),
          ScatterSpot(5, 2, dotPainter: FlDotCirclePainter(radius: 4, color: Colors.purple)),
        ],
      ),
    );
  }
}

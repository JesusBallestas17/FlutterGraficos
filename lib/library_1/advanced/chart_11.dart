import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart11 extends StatelessWidget {
  const Chart11({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
            return spotIndexes.map((index) {
              return TouchedSpotIndicatorData(
                const FlLine(color: Colors.redAccent, strokeWidth: 2, dashArray: [5, 5]),
                FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(radius: 6, color: Colors.redAccent),
                ),
              );
            }).toList();
          },
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (spot) => Colors.black87,
          ),
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(1, 100), FlSpot(2, 200), FlSpot(3, 150), FlSpot(4, 300), FlSpot(5, 250)],
            isCurved: true,
            color: Colors.deepPurple,
            barWidth: 3,
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}

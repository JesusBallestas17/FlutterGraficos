import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart34 extends StatelessWidget {
  const Chart34({super.key});

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
            spots: const [FlSpot(0, 20), FlSpot(1, 80), FlSpot(2, 40), FlSpot(3, 90)],
            color: Colors.grey,
            barWidth: 2,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                if (spot.y > 70) {
                  return FlDotCirclePainter(radius: 8, color: Colors.red, strokeWidth: 2, strokeColor: Colors.white);
                }
                return FlDotCirclePainter(radius: 4, color: Colors.blue);
              },
            ),
          )
        ],
      ),
    );
  }
}
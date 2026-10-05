import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart16 extends StatelessWidget {
  const Chart16({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 30), FlSpot(1, 50), FlSpot(2, 40), FlSpot(3, 80), FlSpot(4, 70)],
            isCurved: true,
            color: Colors.blueAccent,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [Colors.blueAccent.withValues(alpha: 0.5), Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
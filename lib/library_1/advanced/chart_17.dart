import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart17 extends StatelessWidget {
  const Chart17({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 100,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: [
          _buildRod(0, 60), _buildRod(1, 80), _buildRod(2, 45), _buildRod(3, 90),
        ],
      ),
    );
  }

  BarChartGroupData _buildRod(int x, double val) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: val,
          color: Colors.deepPurple,
          width: 20,
          backDrawRodData: BackgroundBarChartRodData(
            show: true, toY: 100, color: Colors.grey.withValues(alpha: 0.2),
          ),
        )
      ],
    );
  }
}
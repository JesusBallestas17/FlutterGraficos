import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart03 extends StatelessWidget {
  const Chart03({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 120,
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (v, m) => Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Trimestre \${v.toInt() + 1}', style: const TextStyle(fontSize: 10)),
              ),
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: const FlGridData(show: true, drawVerticalLine: false),
        borderData: FlBorderData(show: false),
        barGroups: [
          _buildGroup(0, 40, 50, 30, 80),
          _buildGroup(1, 60, 70, 40, 90),
          _buildGroup(2, 50, 40, 60, 100),
        ],
      ),
    );
  }

  BarChartGroupData _buildGroup(int x, double p1, double p2, double p3, double p4) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(toY: p1, color: Colors.blue, width: 12),
        BarChartRodData(toY: p2, color: Colors.green, width: 12),
        BarChartRodData(toY: p3, color: Colors.orange, width: 12),
        BarChartRodData(toY: p4, color: Colors.redAccent, width: 12),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart07 extends StatelessWidget {
  const Chart07({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) => Colors.teal,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                'Total\n\${rod.toY.round()} USD',
                const TextStyle(color: Colors.white, fontSize: 14),
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (v, m) => Text('Sem \${v.toInt() + 1}'),
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 150, color: Colors.blueAccent)]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 300, color: Colors.blueAccent)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 200, color: Colors.blueAccent)]),
          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 400, color: Colors.blueAccent)]),
        ]
      )
    );
  }
}

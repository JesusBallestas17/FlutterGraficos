import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart05 extends StatelessWidget {
  const Chart05({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0,
        maxY: 100,
        titlesData: FlTitlesData(
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true, getTitlesWidget: (v, m) => Text('M\${v.toInt()}')),
          ),
        ),
        gridData: const FlGridData(show: true),
        borderData: FlBorderData(show: true, border: Border.all(color: Colors.grey.shade300)),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(1, 30), FlSpot(2, 45), FlSpot(3, 60), FlSpot(4, 70)],
            isCurved: true,
            color: Colors.green,
            barWidth: 2,
            dotData: const FlDotData(show: false),
          ),
          LineChartBarData(
            spots: const [FlSpot(1, 20), FlSpot(2, 35), FlSpot(3, 40), FlSpot(4, 50)],
            isCurved: true,
            color: Colors.redAccent,
            barWidth: 2,
            dotData: const FlDotData(show: false),
          ),
        ],
        betweenBarsData: [
          BetweenBarsData(
            fromIndex: 0,
            toIndex: 1,
            color: Colors.green.withValues(alpha: 0.2),
          )
        ],
      ),
    );
  }
}

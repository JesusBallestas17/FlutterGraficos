import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart02 extends StatelessWidget {
  const Chart02({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos: cat1, cat2, cat3
    final rawData = [
      [1200.0, 800.0, 400.0],
      [1500.0, 1000.0, 500.0],
      [800.0, 1200.0, 600.0],
      [2000.0, 500.0, 200.0],
    ];

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 100,
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) => Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem('\${rod.toY.toStringAsFixed(1)}%', const TextStyle(color: Colors.white));
            },
          ),
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (v, m) => Text('M\${v.toInt() + 1}', style: const TextStyle(fontSize: 12)),
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barGroups: List.generate(rawData.length, (i) {
          final total = rawData[i].reduce((a, b) => a + b);
          final p1 = (rawData[i][0] / total) * 100;
          final p2 = (rawData[i][1] / total) * 100;
          final p3 = (rawData[i][2] / total) * 100;

          return BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: 100,
                width: 30,
                borderRadius: BorderRadius.zero,
                rodStackItems: [
                  BarChartRodStackItem(0, p1, Colors.blue),
                  BarChartRodStackItem(p1, p1 + p2, Colors.orange),
                  BarChartRodStackItem(p1 + p2, 100, Colors.purple),
                ],
              )
            ]
          );
        }),
      ),
    );
  }
}

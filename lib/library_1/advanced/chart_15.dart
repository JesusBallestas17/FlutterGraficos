import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart15 extends StatelessWidget {
  const Chart15({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 120,
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (v, m) => Text('T\${v.toInt() + 1}'),
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                // Badge / Insignia superpuesta en el topTitle
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))]
                  ),
                  child: Text(
                    '★ \${(value + 1).toInt()}',
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 50, color: Colors.blueAccent)]),
          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 80, color: Colors.blueAccent)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 60, color: Colors.blueAccent)]),
          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 100, color: Colors.blueAccent)]),
        ],
      ),
    );
  }
}

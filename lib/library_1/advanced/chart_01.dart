import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart01 extends StatelessWidget {
  const Chart01({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 15000,
        barTouchData: BarTouchData(enabled: true),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('M\${value.toInt() + 1}', style: const TextStyle(fontSize: 12)),
              ),
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: const FlGridData(show: true, drawVerticalLine: false),
        borderData: FlBorderData(show: false),
        barGroups: [
          _buildStackedGroup(0, 5000, 3000),
          _buildStackedGroup(1, 7000, 4000),
          _buildStackedGroup(2, 6000, 4500),
          _buildStackedGroup(3, 8000, 3500),
          _buildStackedGroup(4, 9000, 5000),
        ],
      ),
    );
  }

  BarChartGroupData _buildStackedGroup(int x, double income, double expenses) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: income + expenses,
          width: 24,
          borderRadius: BorderRadius.circular(4),
          rodStackItems: [
            BarChartRodStackItem(0, expenses, Colors.redAccent),
            BarChartRodStackItem(expenses, income + expenses, Colors.green),
          ],
        ),
      ],
    );
  }
}

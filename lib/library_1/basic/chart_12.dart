import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart12 extends StatelessWidget {
  const Chart12({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: const FlGridData(show: false), // Deshabilita la cuadrícula
        barGroups: FictitiousData.monthlyIncomes.map((e) => BarChartGroupData(
          x: e.id,
          barRods: [BarChartRodData(toY: e.amount, color: Colors.deepPurple)],
        )).toList(),
      ),
    );
  }
}
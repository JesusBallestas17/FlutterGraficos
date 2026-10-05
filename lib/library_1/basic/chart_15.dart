import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart15 extends StatelessWidget {
  const Chart15({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.blue, Colors.red, Colors.green, Colors.orange];
    return PieChart(
      PieChartData(
        sectionsSpace: 2, // Espacio estándar
        sections: FictitiousData.categoryIncomes.asMap().entries.map((entry) {
          final index = entry.key;
          final data = entry.value;
          return PieChartSectionData(
            value: data.amount,
            color: colors[index % colors.length],
            title: data.category,
            radius: 50,
            titleStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}
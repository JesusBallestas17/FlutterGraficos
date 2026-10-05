import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart16 extends StatelessWidget {
  const Chart16({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.blue, Colors.red, Colors.green, Colors.orange];
    return PieChart(
      PieChartData(
        centerSpaceRadius: 60, // Esto convierte el pastel en una Dona
        sectionsSpace: 4,
        sections: FictitiousData.categoryIncomes.asMap().entries.map((e) {
          return PieChartSectionData(
            value: e.value.amount, color: colors[e.key], title: e.value.category,
            radius: 30, titleStyle: const TextStyle(fontSize: 10, color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}
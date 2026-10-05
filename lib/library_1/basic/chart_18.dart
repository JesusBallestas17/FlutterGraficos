import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart18 extends StatelessWidget {
  const Chart18({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.teal, Colors.cyan, Colors.indigo, Colors.blueGrey];
    return PieChart(
      PieChartData(
        sectionsSpace: 0, // Sin espacios entre secciones
        centerSpaceRadius: 0, // Pastel completo
        sections: FictitiousData.categoryIncomes.asMap().entries.map((e) {
          return PieChartSectionData(
            value: e.value.amount, color: colors[e.key],
            title: '${(e.value.amount / 1000000).toStringAsFixed(0)}M',
            radius: 90, titleStyle: const TextStyle(color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}
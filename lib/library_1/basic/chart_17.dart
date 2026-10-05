import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart17 extends StatelessWidget {
  const Chart17({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.purple, Colors.grey, Colors.grey, Colors.grey];
    return PieChart(
      PieChartData(
        centerSpaceRadius: 40,
        sections: FictitiousData.categoryIncomes.asMap().entries.map((e) {
          final isStar = e.key == 0; // Resaltamos la primera categoría (Ropa)
          return PieChartSectionData(
            value: e.value.amount, color: isStar ? colors[0] : colors[1].withValues(alpha: 0.5),
            title: isStar ? 'Estrella' : '',
            radius: isStar ? 60 : 40, // Radio variante para resaltar
          );
        }).toList(),
      ),
    );
  }
}
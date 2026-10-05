import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart28 extends StatelessWidget {
  const Chart28({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: FictitiousData.monthlyIncomes.map((e) {
          // Lógica ficticia: Si supera los 22M se considera fin de semana alta demanda
          Color barColor = e.amount >= 22000000 ? Colors.amber : Colors.blueGrey;
          return BarChartGroupData(
            x: e.id,
            barRods: [BarChartRodData(toY: e.amount, color: barColor)],
          );
        }).toList(),
      ),
    );
  }
}
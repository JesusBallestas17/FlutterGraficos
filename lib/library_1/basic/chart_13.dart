import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart13 extends StatelessWidget {
  const Chart13({super.key});

  @override
  Widget build(BuildContext context) {
    // fl_chart no tiene BarChart horizontal nativo, la API exige usar RotatedBox
    return RotatedBox(
      quarterTurns: 1, // Rota 90 grados
      child: BarChart(
        BarChartData(
          titlesData: const FlTitlesData(show: false), // Ocultamos títulos rotados para la base
          barGroups: FictitiousData.monthlyIncomes.map((e) => BarChartGroupData(
            x: e.id,
            barRods: [BarChartRodData(toY: e.amount, color: Colors.pink)],
          )).toList(),
        ),
      ),
    );
  }
}
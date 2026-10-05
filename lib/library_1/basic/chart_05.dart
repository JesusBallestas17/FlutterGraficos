import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart05 extends StatelessWidget {
  const Chart05({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: const FlTitlesData(show: false), // Oculta todos los ejes
        borderData: FlBorderData(show: false), // Oculta bordes
        gridData: const FlGridData(show: false), // Oculta grilla
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true, color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
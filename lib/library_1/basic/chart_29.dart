import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart29 extends StatelessWidget {
  const Chart29({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        backgroundColor: Colors.blue.withValues(alpha: 0.1), // Tinta el fondo interno del gráfico
        gridData: const FlGridData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true, color: Colors.blue, barWidth: 4,
          ),
        ],
      ),
    );
  }
}
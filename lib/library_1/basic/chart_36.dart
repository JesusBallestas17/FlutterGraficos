import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart36 extends StatelessWidget {
  const Chart36({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: false, color: Colors.purple,
            dotData: const FlDotData(show: false), // Desactiva los marcadores de datos
          ),
        ],
      ),
    );
  }
}
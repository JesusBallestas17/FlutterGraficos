import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart01 extends StatelessWidget {
  const Chart01({super.key});

  @override
  Widget build(BuildContext context) {
    final data = FictitiousData.monthlyIncomes;
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: data.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: false, // Recta
            dotData: const FlDotData(show: false),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
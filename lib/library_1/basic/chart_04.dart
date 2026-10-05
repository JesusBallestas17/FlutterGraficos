import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart04 extends StatelessWidget {
  const Chart04({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isStepLineChart: true, // Escalonada
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
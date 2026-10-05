import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart24 extends StatelessWidget {
  const Chart24({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            color: Colors.blue, isCurved: true,
          ),
          LineChartBarData( // Segunda línea
            spots: FictitiousData.monthlyIncomesSouth.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            color: Colors.orange, isCurved: true,
          ),
        ],
      ),
    );
  }
}
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart10 extends StatelessWidget {
  const Chart10({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: FictitiousData.monthlyIncomesWithLoss.map((e) => BarChartGroupData(
          x: e.id,
          barRods: [
            BarChartRodData(
              toY: e.amount,
              color: e.amount < 0 ? Colors.red : Colors.green, // Color condicional real
            )
          ],
        )).toList(),
      ),
    );
  }
}
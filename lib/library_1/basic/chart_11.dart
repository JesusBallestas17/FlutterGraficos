import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart11 extends StatelessWidget {
  const Chart11({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: FictitiousData.monthlyIncomes.map((e) => BarChartGroupData(
          x: e.id,
          barRods: [
            BarChartRodData(
              toY: e.amount, color: Colors.amber,
              borderRadius: BorderRadius.circular(12), // Bordes específicos
            )
          ],
        )).toList(),
      ),
    );
  }
}
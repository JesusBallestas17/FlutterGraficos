import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart25 extends StatelessWidget {
  const Chart25({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: List.generate(FictitiousData.monthlyIncomes.length, (index) {
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(toY: FictitiousData.monthlyIncomes[index].amount, color: Colors.indigo, width: 12),
              BarChartRodData(toY: FictitiousData.monthlyIncomesSouth[index].amount, color: Colors.teal, width: 12),
            ],
          );
        }),
      ),
    );
  }
}
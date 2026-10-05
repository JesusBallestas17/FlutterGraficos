import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart39 extends StatelessWidget {
  const Chart39({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: FictitiousData.monthlyIncomes.map((e) => BarChartGroupData(
          x: e.id,
          barRods: [
            BarChartRodData(
              toY: e.amount, color: Colors.lightGreen,
              backDrawRodData: BackgroundBarChartRodData(
                show: true, toY: 30000000, color: Colors.grey.withValues(alpha: 0.2), // Banda de fondo
              ),
            )
          ],
        )).toList(),
      ),
    );
  }
}
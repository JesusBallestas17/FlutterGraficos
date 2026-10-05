import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart07 extends StatelessWidget {
  const Chart07({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true, color: Colors.indigo,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [Colors.indigo.withValues(alpha: 0.5), Colors.indigo.withValues(alpha: 0.0)],
                begin: Alignment.topCenter, end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
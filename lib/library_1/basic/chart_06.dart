import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart06 extends StatelessWidget {
  const Chart06({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true,
            color: Colors.teal,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.teal.withValues(alpha: 0.3), // Área sólida semitransparente
            ),
          ),
        ],
      ),
    );
  }
}
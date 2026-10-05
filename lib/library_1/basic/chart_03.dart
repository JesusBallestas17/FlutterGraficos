import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart03 extends StatelessWidget {
  const Chart03({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                radius: 6, color: Colors.red, strokeWidth: 2, strokeColor: Colors.white,
              ),
            ),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
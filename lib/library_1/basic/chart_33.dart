import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart33 extends StatelessWidget {
  const Chart33({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(
          show: true,
          drawVerticalLine: true,
          drawHorizontalLine: false, // Desactiva las líneas horizontales de la cuadrícula
        ),
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true, color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
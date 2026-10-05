import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart27 extends StatelessWidget {
  const Chart27({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        extraLinesData: ExtraLinesData(
          horizontalLines: [
            HorizontalLine(
              y: 22000000, color: Colors.red, strokeWidth: 2, dashArray: [5, 5], // Línea de meta visual
              label: HorizontalLineLabel(show: true, labelResolver: (_) => 'META', style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            isCurved: true, color: Colors.green,
          ),
        ],
      ),
    );
  }
}
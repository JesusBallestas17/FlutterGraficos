import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart20 extends StatelessWidget {
  const Chart20({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: FictitiousData.scatterIncomes.map((e) {
          return ScatterSpot(
            e.day, e.amount,
            dotPainter: FlDotCirclePainter(radius: 12, color: Colors.orange.withValues(alpha: 0.6), strokeWidth: 2, strokeColor: Colors.orange),
          );
        }).toList(),
      ),
    );
  }
}
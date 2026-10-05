import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart19 extends StatelessWidget {
  const Chart19({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: FictitiousData.scatterIncomes.map((e) {
          return ScatterSpot(
            e.day, e.amount,
            dotPainter: FlDotCirclePainter(radius: 5, color: Colors.blue, strokeWidth: 0),
          );
        }).toList(),
      ),
    );
  }
}
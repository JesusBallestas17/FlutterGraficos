import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart21 extends StatelessWidget {
  const Chart21({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: FictitiousData.scatterIncomes.map((e) {
          // Color cambia si supera la meta de 3000
          Color dotColor = e.amount > 3000 ? Colors.green : Colors.red;
          return ScatterSpot(
            e.day, e.amount,
            dotPainter: FlDotCirclePainter(radius: 8, color: dotColor, strokeWidth: 0),
          );
        }).toList(),
      ),
    );
  }
}
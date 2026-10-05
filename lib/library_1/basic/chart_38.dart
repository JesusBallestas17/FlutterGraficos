import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart38 extends StatelessWidget {
  const Chart38({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: FictitiousData.scatterIncomes.map((e) {
          return ScatterSpot(
            e.day, e.amount,
            // Uso de FlDotSquarePainter nativo de la API en lugar del CirclePainter
            dotPainter: FlDotSquarePainter(size: 10, color: Colors.deepPurple),
          );
        }).toList(),
      ),
    );
  }
}
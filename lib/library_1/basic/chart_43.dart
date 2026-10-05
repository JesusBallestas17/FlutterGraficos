import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../data/monthly_income_data.dart';

class Chart43 extends StatelessWidget {
  const Chart43({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: const FlTitlesData(show: false),
        gridData: const FlGridData(show: false),
        lineBarsData: [
          // Carga 120 puntos ficticios generando una gráfica densa
          LineChartBarData(
            spots: FictitiousData.decadeHistory
                .map((e) => FlSpot(e.year, e.amount))
                .toList(),
            isCurved: false,
            color: Colors.indigo,
            barWidth: 1.5,
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
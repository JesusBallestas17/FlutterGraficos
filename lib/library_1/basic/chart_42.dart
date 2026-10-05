import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart42 extends StatelessWidget {
  const Chart42({super.key});

  @override
  Widget build(BuildContext context) {
    // Comparación simple de ingresos físicos vs digitales
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 65, color: Colors.blue, title: 'Físico\n65%', radius: 60),
          PieChartSectionData(value: 35, color: Colors.orange, title: 'Digital\n35%', radius: 50),
        ],
      ),
    );
  }
}
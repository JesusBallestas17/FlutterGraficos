import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart41 extends StatelessWidget {
  const Chart41({super.key});

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        tickBorderData: const BorderSide(color: Colors.transparent), // Oculta los anillos internos
        gridBorderData: const BorderSide(color: Colors.blueGrey, width: 1), // Mantiene las líneas de los vértices
        dataSets: [
          RadarDataSet(
            dataEntries: FictitiousData.kpiIncomes.map((e) => RadarEntry(value: e.value)).toList(),
            borderColor: Colors.amber, fillColor: Colors.amber.withValues(alpha: 0.3),
          ),
        ],
      ),
    );
  }
}
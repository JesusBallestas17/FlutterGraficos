import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart23 extends StatelessWidget {
  const Chart23({super.key});

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        radarBackgroundColor: Colors.grey.withValues(alpha: 0.05),
        dataSets: [
          RadarDataSet(
            dataEntries: FictitiousData.kpiIncomes.map((e) => RadarEntry(value: e.value)).toList(),
            borderColor: Colors.deepPurple, borderWidth: 2,
            fillColor: Colors.deepPurple.withValues(alpha: 0.4), // Relleno activado
          ),
        ],
        getTitle: (index, angle) => RadarChartTitle(text: FictitiousData.kpiIncomes[index].metric),
      ),
    );
  }
}
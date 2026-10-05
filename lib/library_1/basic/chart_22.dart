import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart22 extends StatelessWidget {
  const Chart22({super.key});

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        dataSets: [
          RadarDataSet(
            dataEntries: FictitiousData.kpiIncomes.map((e) => RadarEntry(value: e.value)).toList(),
            borderColor: Colors.blue, borderWidth: 2,
            fillColor: Colors.transparent, // Sin relleno
          ),
        ],
        getTitle: (index, angle) => RadarChartTitle(text: FictitiousData.kpiIncomes[index].metric),
      ),
    );
  }
}
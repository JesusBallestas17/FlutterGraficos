import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityAdvancedChart18 extends StatelessWidget {
  const CommunityAdvancedChart18({super.key});

  @override
  Widget build(BuildContext context) {
    final data1 = [
      _ChartData(1, 10), _ChartData(2, 25),
      _ChartData(3, 15), _ChartData(4, 30),
      _ChartData(5, 20), _ChartData(6, 40),
    ];

    final series = [
      charts.Series<_ChartData, int>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        dashPatternFn: (_, __) => [5, 5],
        data: data1,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.LineChart(
        series,
        animate: true,
        behaviors: [],
      ),
    );
  }
}

class _ChartData {
  final int label;
  final int value;
  _ChartData(this.label, this.value);
}
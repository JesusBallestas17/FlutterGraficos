import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityBasicChart08 extends StatelessWidget {
  const CommunityBasicChart08({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData(1, 10), _ChartData(2, 25),
      _ChartData(3, 15), _ChartData(4, 30),
    ];
    final data2 = [
      _ChartData(1, 15), _ChartData(2, 20),
      _ChartData(3, 25), _ChartData(4, 10),
    ];
    
    final series = [
      charts.Series<_ChartData, int>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        data: data1,
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.LineChart(series, animate: true, defaultRenderer: charts.LineRendererConfig(includePoints: true)),
    );
  }
}

class _ChartData {
  final int label;
  final int value;
  _ChartData(this.label, this.value);
}

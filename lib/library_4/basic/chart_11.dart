import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityBasicChart11 extends StatelessWidget {
  const CommunityBasicChart11({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData('Ene', 10), _ChartData('Feb', 25),
      _ChartData('Mar', 15), _ChartData('Abr', 30),
    ];
    final data2 = [
      _ChartData('Ene', 15), _ChartData('Feb', 20),
      _ChartData('Mar', 25), _ChartData('Abr', 10),
    ];
    
    final series = [
      charts.Series<_ChartData, String>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        data: data1,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.BarChart(series, animate: true),
    );
  }
}

class _ChartData {
  final String label;
  final int value;
  _ChartData(this.label, this.value);
}

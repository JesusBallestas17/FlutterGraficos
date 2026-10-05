import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityAdvancedChart31 extends StatelessWidget {
  const CommunityAdvancedChart31({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData(DateTime(2023, 1, 1), 10), _ChartData(DateTime(2023, 1, 2), 25),
      _ChartData(DateTime(2023, 1, 3), 15), _ChartData(DateTime(2023, 1, 4), 30),
      _ChartData(DateTime(2023, 1, 5), 20), _ChartData(DateTime(2023, 1, 6), 40),
    ];
    final data2 = [
      _ChartData(DateTime(2023, 1, 1), 15), _ChartData(DateTime(2023, 1, 2), 20),
      _ChartData(DateTime(2023, 1, 3), 25), _ChartData(DateTime(2023, 1, 4), 10),
      _ChartData(DateTime(2023, 1, 5), 30), _ChartData(DateTime(2023, 1, 6), 20),
    ];

    final series = [
      
      charts.Series<_ChartData, DateTime>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: data1,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.TimeSeriesChart(
        series,
        animate: true,
        behaviors: [charts.PanAndZoomBehavior()],
        
      ),
    );
  }
}

class _ChartData {
  final DateTime label;
  final int value;
  _ChartData(this.label, this.value);
}

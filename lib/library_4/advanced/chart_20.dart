import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityAdvancedChart20 extends StatelessWidget {
  const CommunityAdvancedChart20({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData('Ene', 15, charts.MaterialPalette.blue.shadeDefault),
      _ChartData('Feb', 25, charts.MaterialPalette.red.shadeDefault),
      _ChartData('Mar', 10, charts.MaterialPalette.green.shadeDefault),
      _ChartData('Abr', 30, charts.MaterialPalette.purple.shadeDefault),
    ];

    final series = [
      
      charts.Series<_ChartData, String>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_ChartData data, _) => data.color,
        data: data1,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.PieChart(
        series,
        animate: true,
        behaviors: [charts.DatumLegend(position: charts.BehaviorPosition.bottom)],
        defaultRenderer: charts.ArcRendererConfig(arcWidth: 60),
      ),
    );
  }
}

class _ChartData {
  final String label;
  final int value;
  final charts.Color color;
  _ChartData(this.label, this.value, this.color);
}

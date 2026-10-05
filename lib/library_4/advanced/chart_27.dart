import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityAdvancedChart27 extends StatelessWidget {
  const CommunityAdvancedChart27({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData(1, 10), _ChartData(2, 25),
      _ChartData(3, 15), _ChartData(4, 30),
      _ChartData(5, 20), _ChartData(6, 40),
    ];
    final data2 = [
      _ChartData(1, 15), _ChartData(2, 20),
      _ChartData(3, 25), _ChartData(4, 10),
      _ChartData(5, 30), _ChartData(6, 20),
    ];

    final series = [
      
      charts.Series<_ChartData, int>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: data1,
      ),

      charts.Series<_ChartData, int>(
        id: 'Serie2',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        data: data2,
      )..setAttribute(charts.rendererIdKey, 'customLine')
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.NumericComboChart(
        series,
        animate: true,
        behaviors: [charts.SeriesLegend()],
        defaultRenderer: charts.LineRendererConfig(includeArea: true), customSeriesRenderers: [charts.LineRendererConfig(customRendererId: 'customLine', includeArea: false)],
      ),
    );
  }
}

class _ChartData {
  final int label;
  final int value;
  _ChartData(this.label, this.value);
}

import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart' as charts;

class CommunityAdvancedChart01 extends StatelessWidget {
  const CommunityAdvancedChart01({super.key});

  @override
  Widget build(BuildContext context) {
    
    final data1 = [
      _ChartData('Ene', 10, charts.MaterialPalette.blue.shadeDefault), 
      _ChartData('Feb', 25, charts.MaterialPalette.blue.shadeDefault),
      _ChartData('Mar', 15, charts.MaterialPalette.blue.shadeDefault), 
      _ChartData('Abr', 30, charts.MaterialPalette.blue.shadeDefault),
    ];
    final data2 = [
      _ChartData('Ene', 15, charts.MaterialPalette.green.shadeDefault), 
      _ChartData('Feb', 20, charts.MaterialPalette.green.shadeDefault),
      _ChartData('Mar', 25, charts.MaterialPalette.green.shadeDefault), 
      _ChartData('Abr', 10, charts.MaterialPalette.green.shadeDefault),
    ];

    final series = [
      
      charts.Series<_ChartData, String>(
        id: 'Serie1',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: data1,
      ),

      charts.Series<_ChartData, String>(
        id: 'Serie2',
        domainFn: (_ChartData data, _) => data.label,
        measureFn: (_ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        data: data2,
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: charts.BarChart(
        series,
        animate: true,
        behaviors: [charts.SeriesLegend()],
        
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

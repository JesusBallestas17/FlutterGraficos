import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart37 extends StatelessWidget {
  const BasicChart37({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Nivel 1', 10), _ChartData('Nivel 2', 30), _ChartData('Nivel 3', 60),
    ];
    return SfPyramidChart(
      series: PyramidSeries<_ChartData, String>(
        dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
      ),
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }

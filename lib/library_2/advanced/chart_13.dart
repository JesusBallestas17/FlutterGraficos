import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart13 extends StatelessWidget {
  const Chart13({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Directivos', 10), _ChartData('Gerentes', 30),
      _ChartData('Supervisores', 60), _ChartData('Operativos', 150),
    ];

    return SfPyramidChart(
      tooltipBehavior: TooltipBehavior(enable: true),
      series: PyramidSeries<_ChartData, String>(
        dataSource: data,
        xValueMapper: (d, _) => d.x,
        yValueMapper: (d, _) => d.y,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
      ),
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

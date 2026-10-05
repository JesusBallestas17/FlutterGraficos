import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart06 extends StatelessWidget {
  const Chart06({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ingresos', 25.5), _ChartData('Costos', -8.2), 
      _ChartData('Impuestos', -3.5), _ChartData('Beneficio', 13.8, isIntermediate: true),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        WaterfallSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          intermediateSumPredicate: (d, _) => d.isIntermediate,
          color: Colors.green,
          negativePointsColor: Colors.red,
          intermediateSumColor: Colors.blue,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y, {this.isIntermediate = false}); final String x; final double y; final bool isIntermediate; }

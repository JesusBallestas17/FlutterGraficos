import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class Chart22 extends StatelessWidget {
  const Chart22({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = List.generate(50, (i) => _ChartData(i, Random().nextDouble() * 100));
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(title: AxisTitle(text: 'Rango de Ventas')),
      series: <CartesianSeries>[
        HistogramSeries<_ChartData, num>(
          dataSource: data,
          yValueMapper: (d, _) => d.y,
          showNormalDistributionCurve: true,
          curveColor: Colors.red,
          binInterval: 20,
          color: Colors.blueAccent.withOpacity(0.7),
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

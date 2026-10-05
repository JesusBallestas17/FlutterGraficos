import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class Chart32 extends StatelessWidget {
  const Chart32({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulando 500 puntos para fast line (alta densidad)
    final List<_ChartData> data = List.generate(500, (i) => _ChartData(i, Random().nextDouble() * 100 + sin(i / 10) * 50));
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        FastLineSeries<_ChartData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          color: Colors.blueAccent,
          width: 2,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

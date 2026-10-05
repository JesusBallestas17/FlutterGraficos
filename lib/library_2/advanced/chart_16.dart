import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class Chart16 extends StatelessWidget {
  const Chart16({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final List<_ChartData> data = List.generate(100, (i) => _ChartData(i, random.nextDouble() * 100));

    return SfCartesianChart(
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true, enablePinching: true, enableDoubleTapZooming: true, zoomMode: ZoomMode.x
      ),
      primaryXAxis: const NumericAxis(title: AxisTitle(text: 'Zoomable X')),
      series: <CartesianSeries>[
        ScatterSeries<_ChartData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          color: Colors.redAccent,
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart25 extends StatelessWidget {
  const Chart25({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData(2020, 100), _ChartData(2021, 150),
      _ChartData(2022, 120), _ChartData(2023, 200),
      _ChartData(2024, 180),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        StepLineSeries<_ChartData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          color: Colors.redAccent,
          width: 3,
          markerSettings: const MarkerSettings(isVisible: true),
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

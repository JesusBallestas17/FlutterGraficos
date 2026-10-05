import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart35 extends StatelessWidget {
  const Chart35({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData(1, 20), _ChartData(2, 45), _ChartData(3, 30), _ChartData(4, 50),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        ScatterSeries<_ChartData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, color: Colors.blue, markerSettings: const MarkerSettings(width: 8, height: 8),
        ),
        ErrorBarSeries<_ChartData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, type: ErrorBarType.fixed, verticalErrorValue: 5, color: Colors.red,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

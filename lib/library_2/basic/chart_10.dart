import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart10 extends StatelessWidget {
  const BasicChart10({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData(1, 1500), _ChartData(3, 2100), _ChartData(4, 1800),
      _ChartData(7, 3500), _ChartData(9, 2800), _ChartData(11, 4100),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        ScatterSeries<_ChartData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, color: Colors.brown,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

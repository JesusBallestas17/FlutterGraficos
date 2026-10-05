import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart41 extends StatelessWidget {
  const BasicChart41({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData(1, 10), _ChartData(2, 20), _ChartData(3, 15), _ChartData(4, 30), _ChartData(5, 25), _ChartData(6, 40),
    ];
    return SfCartesianChart(
      series: <CartesianSeries>[
        HistogramSeries<_ChartData, num>(
          dataSource: data, yValueMapper: (d, _) => d.y, binInterval: 10,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y;

  }

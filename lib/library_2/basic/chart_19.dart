import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart19 extends StatelessWidget {
  const BasicChart19({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData('Ene', 10, 8, 5), _StackedData('Feb', 12, 10, 6),
      _StackedData('Mar', 15, 12, 8), _StackedData('Abr', 18, 15, 10),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        StackedBar100Series<_StackedData, String>(dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1),
        StackedBar100Series<_StackedData, String>(dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2),
        StackedBar100Series<_StackedData, String>(dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y3),
      ],
    );
  }
}
class _StackedData { _StackedData(this.x, this.y1, this.y2, this.y3); final String x; final double y1, y2, y3; }

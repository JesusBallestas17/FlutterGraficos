import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart30 extends StatelessWidget {
  const Chart30({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData('2021', 10, 20), _StackedData('2022', 20, 20),
      _StackedData('2023', 30, 10), _StackedData('2024', 25, 25),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        StackedArea100Series<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.cyan,
        ),
        StackedArea100Series<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.indigo,
        ),
      ],
    );
  }
}
class _StackedData { _StackedData(this.x, this.y1, this.y2); final String x; final double y1, y2; }

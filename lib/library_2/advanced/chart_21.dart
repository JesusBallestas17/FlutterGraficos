import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart21 extends StatelessWidget {
  const Chart21({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData('2022', 15, 25), _StackedData('2023', 25, 35),
      _StackedData('2024', 20, 30), _StackedData('2025', 30, 40),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      isTransposed: true,
      series: <CartesianSeries>[
        StackedBarSeries<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.indigoAccent,
        ),
        StackedBarSeries<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.orangeAccent,
        )
      ],
    );
  }
}
class _StackedData { _StackedData(this.x, this.y1, this.y2); final String x; final double y1, y2; }

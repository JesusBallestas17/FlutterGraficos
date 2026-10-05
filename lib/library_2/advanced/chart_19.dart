import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart19 extends StatelessWidget {
  const Chart19({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData(2020, 10, 15), _StackedData(2021, 20, 25),
      _StackedData(2022, 15, 30), _StackedData(2023, 30, 40),
    ];

    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        StackedAreaSeries<_StackedData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.blue.withOpacity(0.7),
        ),
        StackedAreaSeries<_StackedData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.green.withOpacity(0.7),
        ),
      ],
    );
  }
}

class _StackedData { _StackedData(this.x, this.y1, this.y2); final num x; final double y1, y2; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart14 extends StatelessWidget {
  const Chart14({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('2020', 10), _ChartData('2021', 15),
      _ChartData('2022', 15), _ChartData('2023', 30),
      _ChartData('2024', 25), _ChartData('2025', 40),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        StepAreaSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          color: Colors.amber.withOpacity(0.5),
          borderColor: Colors.amber,
          borderWidth: 2,
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

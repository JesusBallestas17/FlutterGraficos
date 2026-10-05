import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart15 extends StatelessWidget {
  const Chart15({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_BoxData> data = [
      _BoxData('Q1', [10, 15, 20, 25, 30, 40]),
      _BoxData('Q2', [12, 18, 22, 28, 35]),
      _BoxData('Q3', [8, 10, 15, 20, 45]), // 45 es outlier
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        BoxAndWhiskerSeries<_BoxData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          showMean: true,
          color: Colors.lightGreen,
        )
      ],
    );
  }
}

class _BoxData { _BoxData(this.x, this.y); final String x; final List<double> y; }

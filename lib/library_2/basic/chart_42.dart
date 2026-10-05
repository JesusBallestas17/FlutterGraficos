import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart42 extends StatelessWidget {
  const BasicChart42({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_BoxData> data = [
      _BoxData('Q1', [10, 15, 20, 25, 30]), _BoxData('Q2', [12, 18, 22, 28, 35]),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        BoxAndWhiskerSeries<_BoxData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
        )
      ],
    );
  }
}
class _BoxData { _BoxData(this.x, this.y); final String x; final List<double> y;

  }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart29 extends StatelessWidget {
  const BasicChart29({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('E', 18.5), _ChartData('F', 21.3), _ChartData('M', 19.8), _ChartData('A', 24.1),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        SplineSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, color: Colors.deepPurple,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }


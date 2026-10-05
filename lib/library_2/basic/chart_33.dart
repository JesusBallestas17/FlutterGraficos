import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart33 extends StatelessWidget {
  const BasicChart33({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_StackedData> data = [
      _StackedData('Ene', 10, 8), _StackedData('Feb', 12, 10), _StackedData('Mar', 15, 12),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        StackedColumnSeries<_StackedData, String>(dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.lightBlue),
        StackedColumnSeries<_StackedData, String>(dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.indigo),
      ],
    );
  }
}
class _StackedData { _StackedData(this.x, this.y1, this.y2); final String x; final double y1, y2;

  }

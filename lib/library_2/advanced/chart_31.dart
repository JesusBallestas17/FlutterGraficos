import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart31 extends StatelessWidget {
  const Chart31({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData('Ene', 100, 60), _StackedData('Feb', 100, 80),
      _StackedData('Mar', 100, 50), _StackedData('Abr', 100, 90),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        ColumnSeries<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.grey.shade300, width: 0.8,
        ),
        ColumnSeries<_StackedData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.deepPurple, width: 0.4,
        ),
      ],
    );
  }
}
class _StackedData { _StackedData(this.x, this.y1, this.y2); final String x; final double y1, y2; }

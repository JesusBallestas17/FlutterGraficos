import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart04 extends StatelessWidget {
  const BasicChart04({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ene', 18.5), _ChartData('Feb', 21.3), _ChartData('Mar', 19.8),
      _ChartData('Abr', 24.1), _ChartData('May', 22.0), _ChartData('Jun', 25.5),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        AreaSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, color: Colors.orange.withOpacity(0.5), borderColor: Colors.orange, borderWidth: 2,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

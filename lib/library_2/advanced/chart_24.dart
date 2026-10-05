import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart24 extends StatelessWidget {
  const Chart24({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_RangeData> data = [
      _RangeData('Trim 1', 10, 40), _RangeData('Trim 2', 30, 60),
      _RangeData('Trim 3', 20, 50), _RangeData('Trim 4', 40, 80),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        SplineRangeAreaSeries<_RangeData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          color: Colors.purple.withOpacity(0.3),
          borderColor: Colors.purple,
          borderWidth: 2,
        )
      ],
    );
  }
}
class _RangeData { _RangeData(this.x, this.low, this.high); final String x; final double low, high; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart23 extends StatelessWidget {
  const Chart23({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_RangeData> data = [
      _RangeData('Ene', 15, 30), _RangeData('Feb', 20, 35),
      _RangeData('Mar', 18, 40), _RangeData('Abr', 25, 45),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        RangeAreaSeries<_RangeData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          color: Colors.teal.withOpacity(0.4),
          borderColor: Colors.teal,
          borderWidth: 2,
        )
      ],
    );
  }
}
class _RangeData { _RangeData(this.x, this.low, this.high); final String x; final double low, high; }

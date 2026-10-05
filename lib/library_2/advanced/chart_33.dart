import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart33 extends StatelessWidget {
  const Chart33({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_RangeData> data = [
      _RangeData('Proyecto A', 10, 40), _RangeData('Proyecto B', 30, 80),
      _RangeData('Proyecto C', 50, 90), _RangeData('Proyecto D', 70, 100),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      isTransposed: true,
      series: <CartesianSeries>[
        RangeColumnSeries<_RangeData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          color: Colors.amber,
          borderRadius: BorderRadius.circular(4),
        )
      ],
    );
  }
}
class _RangeData { _RangeData(this.x, this.low, this.high); final String x; final double low, high; }

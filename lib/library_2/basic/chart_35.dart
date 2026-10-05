import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart35 extends StatelessWidget {
  const BasicChart35({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_RangeData> data = [
      _RangeData('Ene', 10, 25), _RangeData('Feb', 12, 30), _RangeData('Mar', 15, 28),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        RangeAreaSeries<_RangeData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, lowValueMapper: (d, _) => d.low, highValueMapper: (d, _) => d.high, color: Colors.lightGreen.withOpacity(0.5),
        )
      ],
    );
  }
}
class _RangeData { _RangeData(this.x, this.low, this.high); final String x; final double low, high;

  }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart40 extends StatelessWidget {
  const BasicChart40({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_HiloData> data = [
      _HiloData('Ene', 10, 50), _HiloData('Feb', 20, 60), _HiloData('Mar', 15, 75),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        HiloSeries<_HiloData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, lowValueMapper: (d, _) => d.low, highValueMapper: (d, _) => d.high,
        )
      ],
    );
  }
}
class _HiloData { _HiloData(this.x, this.low, this.high); final String x; final double low, high;

  }

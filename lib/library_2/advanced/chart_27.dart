import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart27 extends StatelessWidget {
  const Chart27({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_HiloData> data = [
      _HiloData('Ene', 10, 50), _HiloData('Feb', 20, 60),
      _HiloData('Mar', 15, 75), _HiloData('Abr', 30, 80),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        HiloSeries<_HiloData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          borderWidth: 4,
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
class _HiloData { _HiloData(this.x, this.low, this.high); final String x; final double low, high; }

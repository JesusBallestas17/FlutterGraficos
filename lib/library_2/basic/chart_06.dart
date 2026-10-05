import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart06 extends StatelessWidget {
  const BasicChart06({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ropa', 45.0), _ChartData('Calzado', 25.0),
      _ChartData('Accesorios', 15.0), _ChartData('Perfumes', 10.0),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        DoughnutSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

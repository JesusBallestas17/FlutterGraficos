import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart07 extends StatelessWidget {
  const BasicChart07({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ventas', 85), _ChartData('Suscripciones', 60),
      _ChartData('Servicios', 90), _ChartData('Publicidad', 40),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        RadialBarSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

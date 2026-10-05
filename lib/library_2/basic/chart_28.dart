import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart28 extends StatelessWidget {
  const BasicChart28({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Ventas', 85), _ChartData('Suscripciones', 60),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        RadialBarSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
          trackColor: Colors.grey.shade200, cornerStyle: CornerStyle.bothCurve,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }


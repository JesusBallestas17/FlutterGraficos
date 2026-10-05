import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart26 extends StatelessWidget {
  const BasicChart26({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Ropa', 45.0), _ChartData('Calzado', 25.0), _ChartData('Accesorios', 15.0),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        PieSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
          explode: true, explodeIndex: 0,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }

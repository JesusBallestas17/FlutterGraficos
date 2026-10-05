import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart29 extends StatelessWidget {
  const Chart29({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_PieData> data = [
      _PieData('Producto A', 50), _PieData('Producto B', 30), _PieData('Producto C', 20),
    ];
    return SfCircularChart(
      legend: const Legend(isVisible: true, position: LegendPosition.right),
      series: <CircularSeries>[
        RadialBarSeries<_PieData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          useSeriesColor: true,
          trackOpacity: 0.3,
          cornerStyle: CornerStyle.bothCurve,
        )
      ],
    );
  }
}
class _PieData { _PieData(this.x, this.y); final String x; final double y; }

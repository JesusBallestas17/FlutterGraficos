import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart31 extends StatelessWidget {
  const BasicChart31({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData(1, 15), _ChartData(3, 21), _ChartData(4, 18), _ChartData(7, 35),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        ScatterSeries<_ChartData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, color: Colors.teal,
          markerSettings: const MarkerSettings(shape: DataMarkerType.triangle, height: 15, width: 15),
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final num x; final double y;

  }

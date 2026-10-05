import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart43 extends StatelessWidget {
  const BasicChart43({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Ene', 10, 15), _ChartData('Feb', 20, 25), _ChartData('Mar', 15, 20),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        ColumnSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.blueGrey,
        ),
        LineSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.amber, markerSettings: const MarkerSettings(isVisible: true),
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y1, this.y2); final String x; final double y1, y2;

  }

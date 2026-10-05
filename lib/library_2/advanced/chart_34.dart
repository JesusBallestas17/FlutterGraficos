import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart34 extends StatelessWidget {
  const Chart34({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Lun', 20), _ChartData('Mar', 40), _ChartData('Mie', 30),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      annotations: <CartesianChartAnnotation>[
        CartesianChartAnnotation(widget: const Icon(Icons.star, color: Colors.amber), coordinateUnit: CoordinateUnit.point, x: 'Mar', y: 45)
      ],
      series: <CartesianSeries>[
        ColumnSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          color: Colors.teal,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

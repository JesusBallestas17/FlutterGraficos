import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart08 extends StatelessWidget {
  const Chart08({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Lunes', 10, 100), _ChartData('Martes', 20, 150),
      _ChartData('Miércoles', 15, 80), _ChartData('Jueves', 30, 200),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      primaryYAxis: const NumericAxis(title: AxisTitle(text: 'Ventas (\$)' )),
      axes: const <ChartAxis>[
        NumericAxis(name: 'yAxis2', opposedPosition: true, title: AxisTitle(text: 'Clientes'))
      ],
      series: <CartesianSeries>[
        ColumnSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.blue, name: 'Ventas',
        ),
        LineSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, yAxisName: 'yAxis2', color: Colors.red, name: 'Clientes', markerSettings: const MarkerSettings(isVisible: true),
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y1, this.y2); final String x; final double y1, y2; }

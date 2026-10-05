import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart36 extends StatelessWidget {
  const Chart36({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_DashboardData> data = [
      _DashboardData('Q1', 40, 20, 30), _DashboardData('Q2', 50, 30, 45),
      _DashboardData('Q3', 60, 40, 50), _DashboardData('Q4', 80, 50, 70),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      legend: const Legend(isVisible: true, position: LegendPosition.bottom),
      series: <CartesianSeries>[
        ColumnSeries<_DashboardData, String>(
          name: 'Ventas', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.blueGrey,
        ),
        SplineAreaSeries<_DashboardData, String>(
          name: 'Gastos', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.redAccent.withOpacity(0.3), borderColor: Colors.redAccent, borderWidth: 2,
        ),
        LineSeries<_DashboardData, String>(
          name: 'Proyección', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y3, color: Colors.green, width: 3, dashArray: [5, 5], markerSettings: const MarkerSettings(isVisible: true),
        ),
      ],
    );
  }
}
class _DashboardData { _DashboardData(this.x, this.y1, this.y2, this.y3); final String x; final double y1, y2, y3; }

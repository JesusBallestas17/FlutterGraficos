import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart18 extends StatelessWidget {
  const Chart18({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Lun', 10), _ChartData('Mar', 15), _ChartData('Mie', 8),
      _ChartData('Jue', 25), _ChartData('Vie', 20),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        LineSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          markerSettings: const MarkerSettings(
            isVisible: true, shape: DataMarkerType.diamond, color: Colors.white, borderWidth: 3, borderColor: Colors.purple, height: 12, width: 12,
          ),
          color: Colors.purple,
          width: 3,
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

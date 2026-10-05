import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart11 extends StatelessWidget {
  const Chart11({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Meta 1', 100, Colors.grey.shade300), 
      _ChartData('Progreso', 75, Colors.green),
    ];

    return SfCircularChart(
      series: <CircularSeries>[
        RadialBarSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          pointColorMapper: (d, _) => d.color,
          cornerStyle: CornerStyle.bothCurve,
          maximumValue: 100,
          radius: '80%',
          innerRadius: '60%',
        )
      ],
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(widget: const Text('75%', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)))
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y, this.color); final String x; final double y; final Color color; }

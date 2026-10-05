import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart36 extends StatelessWidget {
  const BasicChart36({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Visitas', 1000), _ChartData('Leads', 600), _ChartData('Ventas', 100),
    ];
    return SfFunnelChart(
      series: FunnelSeries<_ChartData, String>(
        dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y,
      ),
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }

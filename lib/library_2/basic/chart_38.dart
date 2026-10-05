import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart38 extends StatelessWidget {
  const BasicChart38({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('Ingresos', 25.5), _ChartData('Costos', -8.2), _ChartData('Beneficio', 17.3, isInter: true),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        WaterfallSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, intermediateSumPredicate: (d, _) => d.isInter,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y, {this.isInter = false}); final String x; final double y; final bool isInter;

  }

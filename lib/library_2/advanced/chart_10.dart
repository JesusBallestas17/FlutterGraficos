import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart10 extends StatelessWidget {
  const Chart10({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Norte', 85), _ChartData('Sur', 60), 
      _ChartData('Este', 90), _ChartData('Oeste', 40),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(majorGridLines: MajorGridLines(width: 0)),
      primaryYAxis: const NumericAxis(isVisible: false),
      series: <CartesianSeries>[
        ColumnSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          gradient: const LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

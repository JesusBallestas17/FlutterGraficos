import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart17 extends StatelessWidget {
  const Chart17({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData(1, 20), _ChartData(2, 50), _ChartData(3, 40),
      _ChartData(4, 80), _ChartData(5, 30),
    ];

    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      primaryYAxis: NumericAxis(
        plotBands: <PlotBand>[
          PlotBand(start: 60, end: 100, color: Colors.green.withOpacity(0.2), text: 'Zona Óptima'),
          PlotBand(start: 0, end: 30, color: Colors.red.withOpacity(0.2), text: 'Zona Crítica'),
        ]
      ),
      series: <CartesianSeries>[
        SplineSeries<_ChartData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          width: 3, color: Colors.black,
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart01 extends StatelessWidget {
  const Chart01({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ene', 18.5), _ChartData('Feb', 21.3), _ChartData('Mar', 19.8),
      _ChartData('Abr', 24.1), _ChartData('May', 22.0), _ChartData('Jun', 25.5),
    ];

    return SfCartesianChart(
      trackballBehavior: TrackballBehavior(
        enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipSettings: const InteractiveTooltip(enable: true, format: 'point.x : point.y M'),
      ),
      primaryXAxis: const CategoryAxis(majorGridLines: MajorGridLines(width: 0)),
      primaryYAxis: const NumericAxis(isVisible: false),
      series: <CartesianSeries>[
        SplineAreaSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (_ChartData d, _) => d.x,
          yValueMapper: (_ChartData d, _) => d.y,
          gradient: LinearGradient(
            colors: [Colors.blue.withOpacity(0.6), Colors.transparent],
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
          ),
          borderColor: Colors.blue,
          borderWidth: 3,
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

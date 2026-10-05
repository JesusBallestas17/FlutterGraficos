import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart04 extends StatelessWidget {
  const Chart04({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData(1, 15), _ChartData(2, 21), _ChartData(3, 19),
      _ChartData(4, 30), _ChartData(5, 28), _ChartData(6, 35),
    ];

    return SfCartesianChart(
      tooltipBehavior: TooltipBehavior(enable: true),
      primaryXAxis: const NumericAxis(title: AxisTitle(text: 'Días')),
      series: <CartesianSeries>[
        LineSeries<_ChartData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          markerSettings: const MarkerSettings(isVisible: true),
          trendlines: <Trendline>[
            Trendline(
              type: TrendlineType.polynomial,
              color: Colors.red, width: 2, dashArray: [5, 5],
              name: 'Tendencia', polynomialOrder: 2,
            )
          ],
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final num x; final double y; }

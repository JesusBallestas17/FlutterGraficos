import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart09 extends StatelessWidget {
  const Chart09({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_BubbleData> data = [
      _BubbleData(1, 15, 0.5), _BubbleData(2, 25, 1.2),
      _BubbleData(3, 10, 0.8), _BubbleData(4, 30, 2.5),
      _BubbleData(5, 20, 1.5),
    ];

    return SfCartesianChart(
      tooltipBehavior: TooltipBehavior(enable: true, header: 'Volumen'),
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        BubbleSeries<_BubbleData, num>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          sizeValueMapper: (d, _) => d.size,
          color: Colors.purpleAccent.withOpacity(0.6),
          minimumRadius: 10,
          maximumRadius: 30,
        )
      ],
    );
  }
}

class _BubbleData { _BubbleData(this.x, this.y, this.size); final num x; final double y, size; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart11 extends StatelessWidget {
  const BasicChart11({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_BubbleData> data = [
      _BubbleData(1, 1500, 10), _BubbleData(3, 2100, 15), _BubbleData(4, 1800, 12),
      _BubbleData(7, 3500, 20), _BubbleData(9, 2800, 18), _BubbleData(11, 4100, 25),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        BubbleSeries<_BubbleData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, sizeValueMapper: (d, _) => d.size, color: Colors.indigo,
        )
      ],
    );
  }
}
class _BubbleData { _BubbleData(this.x, this.y, this.size); final num x; final double y, size; }

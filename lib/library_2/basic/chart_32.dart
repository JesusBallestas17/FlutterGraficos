import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart32 extends StatelessWidget {
  const BasicChart32({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_BubbleData> data = [
      _BubbleData(1, 15, 10), _BubbleData(3, 21, 15), _BubbleData(4, 18, 12),
    ];
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      series: <CartesianSeries>[
        BubbleSeries<_BubbleData, num>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, sizeValueMapper: (d, _) => d.size, 
          color: Colors.red.withOpacity(0.5),
        )
      ],
    );
  }
}
class _BubbleData { _BubbleData(this.x, this.y, this.size); final num x; final double y, size;

  }

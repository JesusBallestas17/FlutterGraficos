import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart39 extends StatelessWidget {
  const BasicChart39({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_CandleData> data = [
      _CandleData('S1', 20, 80, 40, 60), _CandleData('S2', 30, 90, 70, 50),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        CandleSeries<_CandleData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, lowValueMapper: (d, _) => d.low, highValueMapper: (d, _) => d.high, openValueMapper: (d, _) => d.open, closeValueMapper: (d, _) => d.close,
        )
      ],
    );
  }
}
class _CandleData { _CandleData(this.x, this.low, this.high, this.open, this.close); final String x; final double low, high, open, close;

  }

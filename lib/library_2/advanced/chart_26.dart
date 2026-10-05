import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart26 extends StatelessWidget {
  const Chart26({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_CandleData> data = [
      _CandleData('Sem 1', 20, 80, 40, 60),
      _CandleData('Sem 2', 30, 90, 70, 50),
      _CandleData('Sem 3', 10, 70, 30, 60),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        CandleSeries<_CandleData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          openValueMapper: (d, _) => d.open,
          closeValueMapper: (d, _) => d.close,
          bullColor: Colors.green,
          bearColor: Colors.red,
        )
      ],
    );
  }
}
class _CandleData { _CandleData(this.x, this.low, this.high, this.open, this.close); final String x; final double low, high, open, close; }

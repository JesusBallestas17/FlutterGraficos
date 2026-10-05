import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart07 extends StatelessWidget {
  const Chart07({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_RangeData> data = [
      _RangeData('Ene', 10, 25), _RangeData('Feb', 12, 30),
      _RangeData('Mar', 15, 28), _RangeData('Abr', 20, 40),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CartesianSeries>[
        RangeColumnSeries<_RangeData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          lowValueMapper: (d, _) => d.low,
          highValueMapper: (d, _) => d.high,
          borderRadius: BorderRadius.circular(5),
          color: Colors.deepOrangeAccent,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}

class _RangeData { _RangeData(this.x, this.low, this.high); final String x; final double low, high; }

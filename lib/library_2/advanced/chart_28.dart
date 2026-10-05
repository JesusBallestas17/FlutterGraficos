import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart28 extends StatelessWidget {
  const Chart28({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_PieData> data = [
      _PieData('Norte', 40), _PieData('Sur', 30), _PieData('Este', 20), _PieData('Oeste', 10),
    ];
    return SfCircularChart(
      series: <CircularSeries>[
        PieSeries<_PieData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          explode: true,
          explodeIndex: 1, // Explota 'Sur'
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}
class _PieData { _PieData(this.x, this.y); final String x; final double y; }

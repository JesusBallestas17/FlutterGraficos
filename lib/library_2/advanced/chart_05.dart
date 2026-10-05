import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart05 extends StatelessWidget {
  const Chart05({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_PieData> data = [
      _PieData('Ventas', 85, '85%'), _PieData('Servicios', 60, '60%'),
      _PieData('Publicidad', 40, '40%'),
    ];

    return SfCircularChart(
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
          widget: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('TOTAL', style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text('185k', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            ],
          )
        )
      ],
      series: <CircularSeries>[
        DoughnutSeries<_PieData, String>(
          dataSource: data,
          xValueMapper: (d, _) => d.x,
          yValueMapper: (d, _) => d.y,
          dataLabelMapper: (d, _) => d.text,
          innerRadius: '70%',
          dataLabelSettings: const DataLabelSettings(isVisible: true, labelPosition: ChartDataLabelPosition.outside),
        )
      ],
    );
  }
}

class _PieData { _PieData(this.x, this.y, this.text); final String x, text; final double y; }

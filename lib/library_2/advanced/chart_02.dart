import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart02 extends StatelessWidget {
  const Chart02({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_StackedData> data = [
      _StackedData('Q1', 10, 20, 30), _StackedData('Q2', 15, 25, 20),
      _StackedData('Q3', 20, 10, 40), _StackedData('Q4', 25, 30, 10),
    ];

    return SfCartesianChart(
      tooltipBehavior: TooltipBehavior(enable: true),
      legend: const Legend(isVisible: true, position: LegendPosition.bottom),
      primaryXAxis: const CategoryAxis(majorGridLines: MajorGridLines(width: 0)),
      primaryYAxis: const NumericAxis(labelFormat: '{value}%'),
      series: <CartesianSeries>[
        StackedColumn100Series<_StackedData, String>(
          name: 'Prod A', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y1, color: Colors.indigo,
        ),
        StackedColumn100Series<_StackedData, String>(
          name: 'Prod B', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y2, color: Colors.teal,
        ),
        StackedColumn100Series<_StackedData, String>(
          name: 'Prod C', dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y3, color: Colors.amber,
        ),
      ],
    );
  }
}

class _StackedData { _StackedData(this.x, this.y1, this.y2, this.y3); final String x; final double y1, y2, y3; }

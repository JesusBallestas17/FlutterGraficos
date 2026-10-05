import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart03 extends StatelessWidget {
  const Chart03({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('Ropa', 45), _ChartData('Calzado', 25), 
      _ChartData('Accesorios', 15), _ChartData('Perfumes', 10),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      selectionGesture: ActivationMode.singleTap,
      series: <CartesianSeries>[
        BarSeries<_ChartData, String>(
          dataSource: data,
          xValueMapper: (_ChartData d, _) => d.x,
          yValueMapper: (_ChartData d, _) => d.y,
          selectionBehavior: SelectionBehavior(
            enable: true, selectedColor: Colors.purpleAccent, unselectedColor: Colors.grey.shade300,
          ),
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}

class _ChartData { _ChartData(this.x, this.y); final String x; final double y; }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BasicChart25 extends StatelessWidget {
  const BasicChart25({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<_ChartData> data = [
      _ChartData('E', 18.5), _ChartData('F', 21.3), _ChartData('M', 19.8), _ChartData('A', 24.1),
    ];
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        AreaSeries<_ChartData, String>(
          dataSource: data, xValueMapper: (d, _) => d.x, yValueMapper: (d, _) => d.y, 
          color: Colors.orange.withOpacity(0.3), borderColor: Colors.orange, borderWidth: 3,
        )
      ],
    );
  }
}
class _ChartData { _ChartData(this.x, this.y); final String x; final double y;

  }


import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart18 extends StatelessWidget {
  const Chart18({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('TOTAL', style: TextStyle(fontSize: 16, color: Colors.grey)),
            Text('\$150k', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
        PieChart(
          PieChartData(
            sectionsSpace: 0,
            centerSpaceRadius: 60,
            sections: [
              PieChartSectionData(value: 40, color: Colors.blue, radius: 25, showTitle: false),
              PieChartSectionData(value: 30, color: Colors.amber, radius: 25, showTitle: false),
              PieChartSectionData(value: 20, color: Colors.green, radius: 25, showTitle: false),
              PieChartSectionData(value: 10, color: Colors.redAccent, radius: 25, showTitle: false),
            ],
          ),
        ),
      ],
    );
  }
}
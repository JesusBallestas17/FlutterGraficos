import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart30 extends StatelessWidget {
  const Chart30({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 12,
        centerSpaceRadius: 30,
        sections: [
          PieChartSectionData(
            value: 40, color: Colors.indigo, radius: 40,
            badgeWidget: const Icon(Icons.star, color: Colors.white, size: 16),
            badgePositionPercentageOffset: 1.2,
          ),
          PieChartSectionData(
            value: 30, color: Colors.cyan, radius: 40,
            badgeWidget: const Icon(Icons.bolt, color: Colors.white, size: 16),
            badgePositionPercentageOffset: 1.2,
          ),
          PieChartSectionData(
            value: 30, color: Colors.teal, radius: 40,
            badgeWidget: const Icon(Icons.favorite, color: Colors.white, size: 16),
            badgePositionPercentageOffset: 1.2,
          ),
        ],
      ),
    );
  }
}
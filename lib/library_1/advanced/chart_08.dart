import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart08 extends StatefulWidget {
  const Chart08({super.key});

  @override
  State<Chart08> createState() => _Chart08State();
}

class _Chart08State extends State<Chart08> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            setState(() {
              if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                touchedIndex = -1;
                return;
              }
              touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
            });
          },
        ),
        sectionsSpace: 2,
        centerSpaceRadius: 40,
        sections: [
          PieChartSectionData(
            value: 40, color: Colors.blue, title: '40%',
            radius: touchedIndex == 0 ? 60 : 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: 30, color: Colors.red, title: '30%',
            radius: touchedIndex == 1 ? 60 : 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: 15, color: Colors.green, title: '15%',
            radius: touchedIndex == 2 ? 60 : 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: 15, color: Colors.orange, title: '15%',
            radius: touchedIndex == 3 ? 60 : 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart13 extends StatefulWidget {
  const Chart13({super.key});

  @override
  State<Chart13> createState() => _Chart13State();
}

class _Chart13State extends State<Chart13> {
  int touchedIndex = -1;
  final List<double> values = [50, 20, 80, 15, 60]; // 20 y 15 son "ingreso bajo"

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          touchCallback: (FlTouchEvent event, barTouchResponse) {
            setState(() {
              if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                touchedIndex = -1;
                return;
              }
              touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
            });
          },
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: List.generate(values.length, (i) {
          final isLow = values[i] < 30;
          Color barColor;
          
          if (isLow) {
            barColor = touchedIndex == i ? Colors.red : Colors.orangeAccent;
          } else {
            barColor = touchedIndex == i ? Colors.lightGreen : Colors.green;
          }

          return BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: values[i],
                color: barColor,
                width: 22,
                borderRadius: BorderRadius.circular(4),
              )
            ],
          );
        }),
      ),
    );
  }
}

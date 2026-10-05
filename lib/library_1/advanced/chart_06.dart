import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart06 extends StatelessWidget {
  const Chart06({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (spot) => Colors.black87,
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((spot) {
                return LineTooltipItem(
                  'Ingreso: \$\${spot.y}',
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                );
              }).toList();
            },
          ),
        ),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [FlSpot(0, 10), FlSpot(1, 25), FlSpot(2, 15), FlSpot(3, 40), FlSpot(4, 35)],
            isCurved: true,
            color: Colors.indigo,
            barWidth: 4,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.indigo.withValues(alpha: 0.3),
            ),
          )
        ],
      ),
    );
  }
}

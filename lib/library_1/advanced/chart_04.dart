import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart04 extends StatelessWidget {
  const Chart04({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxY = 12000;
    
    // Compartimos títulos para mantener la cuadrícula sincronizada
    final titles = FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (v, m) => Text('M\${v.toInt() + 1}'),
        ),
      ),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    );

    return Stack(
      children: [
        BarChart(
          BarChartData(
            maxY: maxY,
            minY: 0,
            titlesData: titles,
            gridData: const FlGridData(show: true, drawVerticalLine: false),
            borderData: FlBorderData(show: false),
            barGroups: [
              for (int i = 0; i < 6; i++)
                BarChartGroupData(
                  x: i,
                  barRods: [
                    BarChartRodData(toY: 4000 + (i * 1000).toDouble(), color: Colors.blueAccent.withValues(alpha: 0.6), width: 24),
                  ]
                )
            ]
          )
        ),
        LineChart(
          LineChartData(
            maxY: maxY,
            minY: 0,
            titlesData: const FlTitlesData(show: false), // Ocultar para evitar duplicados
            gridData: const FlGridData(show: false), // Ocultar para no redibujar
            borderData: FlBorderData(show: false),
            lineBarsData: [
              LineChartBarData(
                spots: const [
                  FlSpot(0, 5000), FlSpot(1, 5500), FlSpot(2, 6000),
                  FlSpot(3, 7500), FlSpot(4, 7000), FlSpot(5, 8500),
                ],
                isCurved: true,
                color: Colors.red,
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: true),
              )
            ]
          )
        )
      ],
    );
  }
}

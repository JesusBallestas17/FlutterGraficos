import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../data/monthly_income_data.dart';

class Chart31 extends StatelessWidget {
  const Chart31({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final month = FictitiousData.monthlyIncomes[value.toInt() - 1].month;
                // SideTitleWidget permite rotar los textos de los ejes con la propiedad angle
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  angle: -math.pi / 4, // Rota -45 grados
                  child: Text(month, style: const TextStyle(fontSize: 12)),
                );
              },
            ),
          ),
        ),
        barGroups: FictitiousData.monthlyIncomes.map((e) => BarChartGroupData(
          x: e.id, barRods: [BarChartRodData(toY: e.amount, color: Colors.blue)],
        )).toList(),
      ),
    );
  }
}
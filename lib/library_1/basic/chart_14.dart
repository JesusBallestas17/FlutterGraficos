import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart14 extends StatelessWidget {
  const Chart14({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        baselineY: 20000000, // Línea base en 20 Millones (API real: baselineY)
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList(),
            color: Colors.brown,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.brown.withValues(alpha: 0.3),
              cutOffY: 20000000, applyCutOffY: true, // Rellena hacia la base especificada
            ),
          ),
        ],
      ),
    );
  }
}
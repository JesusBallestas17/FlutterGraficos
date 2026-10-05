import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart40 extends StatelessWidget {
  const Chart40({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true, reservedSize: 40,
              getTitlesWidget: (value, meta) {
                // Formateador personalizado para convertir números grandes en texto corto
                return SideTitleWidget(axisSide: meta.axisSide, child: Text('${(value / 1000000).toInt()}M'));
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value.toInt() < 1 || value.toInt() > FictitiousData.monthlyIncomes.length) return const SizedBox.shrink();
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: Text(FictitiousData.monthlyIncomes[value.toInt() - 1].month, style: const TextStyle(fontWeight: FontWeight.bold)),
                );
              },
            ),
          ),
        ),
        lineBarsData: [LineChartBarData(spots: FictitiousData.monthlyIncomes.map((e) => FlSpot(e.id.toDouble(), e.amount)).toList())],
      ),
    );
  }
}
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../data/monthly_income_data.dart';

class Chart35 extends StatelessWidget {
  const Chart35({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: List.generate(FictitiousData.topSellers.length, (index) {
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: FictitiousData.topSellers[index].amount,
                color: Colors.cyan,
                width: 4, // Barra muy delgada
              )
            ],
          );
        }),
      ),
    );
  }
}
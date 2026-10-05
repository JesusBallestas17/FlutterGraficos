import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../data/monthly_income_data.dart';

class Chart34 extends StatelessWidget {
  const Chart34({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: FictitiousData.monthlyIncomes
                .map(
                  (e) => FlSpot(
                    e.id.toDouble(),
                    e.amount,
                  ),
                )
                .toList(),
            isCurved: true,
            color: Colors.blue,
            barWidth: 4,
            shadow: const Shadow(
              color: Colors.black38,
              offset: Offset(2, 5),
              blurRadius: 4,
            ),
          ),
        ],
      ),
    );
  }
}
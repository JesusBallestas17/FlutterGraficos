import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart09 extends StatelessWidget {
  const Chart09({super.key});

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        dataSets: [
          RadarDataSet(
            fillColor: Colors.blue.withValues(alpha: 0.3),
            borderColor: Colors.blue,
            entryRadius: 3,
            dataEntries: const [
              RadarEntry(value: 80),
              RadarEntry(value: 50),
              RadarEntry(value: 70),
              RadarEntry(value: 90),
              RadarEntry(value: 60),
            ],
          ),
          RadarDataSet(
            fillColor: Colors.red.withValues(alpha: 0.3),
            borderColor: Colors.red,
            entryRadius: 3,
            dataEntries: const [
              RadarEntry(value: 40),
              RadarEntry(value: 60),
              RadarEntry(value: 90),
              RadarEntry(value: 50),
              RadarEntry(value: 80),
            ],
          ),
          RadarDataSet(
            fillColor: Colors.green.withValues(alpha: 0.3),
            borderColor: Colors.green,
            entryRadius: 3,
            dataEntries: const [
              RadarEntry(value: 60),
              RadarEntry(value: 80),
              RadarEntry(value: 40),
              RadarEntry(value: 70),
              RadarEntry(value: 90),
            ],
          ),
        ],
        radarBackgroundColor: Colors.transparent,
        borderData: FlBorderData(show: false),
        radarBorderData: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        getTitle: (index, angle) {
          final titles = [
            'Norte',
            'Sur',
            'Este',
            'Oeste',
            'Centro',
          ];

          return RadarChartTitle(
            text: titles[index],
            angle: angle,
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart26 extends StatelessWidget {
  const Chart26({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFF1E1E2C), borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(16),
      child: RadarChart(
        RadarChartData(
          radarBackgroundColor: Colors.transparent,
          tickCount: 3,
          ticksTextStyle: const TextStyle(color: Colors.transparent),
          gridBorderData: const BorderSide(color: Colors.white24, width: 1.5),
          radarBorderData: const BorderSide(color: Colors.white54, width: 2),
          dataSets: [
            RadarDataSet(
              fillColor: Colors.tealAccent.withValues(alpha: 0.4),
              borderColor: Colors.tealAccent,
              entryRadius: 4,
              dataEntries: const [RadarEntry(value: 80), RadarEntry(value: 90), RadarEntry(value: 50)],
            ),
          ],
        ),
      ),
    );
  }
}
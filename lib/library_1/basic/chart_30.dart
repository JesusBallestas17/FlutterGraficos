import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart30 extends StatelessWidget {
  const Chart30({super.key});

  @override
  Widget build(BuildContext context) {
    // Para hacer un semicírculo en fl_chart, se utiliza startDegreeOffset y 
    // se inserta una sección transparente que ocupa exactamente la mitad del total (50%).
    return PieChart(
      PieChartData(
        startDegreeOffset: 180, // Inicia desde abajo
        sectionsSpace: 2,
        centerSpaceRadius: 40,
        sections: [
          PieChartSectionData(value: 20, color: Colors.green, title: 'Q1', radius: 40),
          PieChartSectionData(value: 30, color: Colors.lightGreen, title: 'Q2', radius: 40),
          // Sección oculta que fuerza el semicírculo
          PieChartSectionData(value: 50, color: Colors.transparent, showTitle: false, radius: 40),
        ],
      ),
    );
  }
}
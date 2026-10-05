import 'package:flutter/material.dart';
import 'chart_01.dart';
import 'chart_02.dart';
import 'chart_03.dart';
import 'chart_04.dart';
import 'chart_05.dart';
import 'chart_06.dart';
import 'chart_07.dart';
import 'chart_08.dart';
import 'chart_09.dart';
import 'chart_10.dart';
import 'chart_11.dart';
import 'chart_12.dart';
import 'chart_13.dart';
import 'chart_14.dart';
import 'chart_15.dart';
import 'chart_16.dart';
import 'chart_17.dart';
import 'chart_18.dart';
import 'chart_19.dart';
import 'chart_20.dart';
import 'chart_21.dart';
import 'chart_22.dart';
import 'chart_23.dart';
import 'chart_24.dart';
import 'chart_25.dart';
import 'chart_26.dart';
import 'chart_27.dart';
import 'chart_28.dart';
import 'chart_29.dart';
import 'chart_30.dart';
import 'chart_31.dart';
import 'chart_32.dart';
import 'chart_33.dart';
import 'chart_34.dart';
import 'chart_35.dart';
import 'chart_36.dart';

class GraphicAdvancedChartsPage extends StatelessWidget {
  const GraphicAdvancedChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'A01. Columnas Apiladas (Interactivo)', child: GraphicAdvancedChart01()),
      const ChartCard(title: 'A02. Columnas Agrupadas (Interactivo)', child: GraphicAdvancedChart02()),
      const ChartCard(title: 'A03. Barras Apiladas HZ (Interactivo)', child: GraphicAdvancedChart03()),
      const ChartCard(title: 'A04. Barras Agrupadas HZ (Interactivo)', child: GraphicAdvancedChart04()),
      const ChartCard(title: 'A05. Área Apilada + Línea (Interactivo)', child: GraphicAdvancedChart05()),
      const ChartCard(title: 'A06. Streamgraph Simétrico (Interactivo)', child: GraphicAdvancedChart06()),
      const ChartCard(title: 'A07. Spline + Puntos (Interactivo)', child: GraphicAdvancedChart07()),
      const ChartCard(title: 'A08. Líneas Punteadas (Interactivo)', child: GraphicAdvancedChart08()),
      const ChartCard(title: 'A09. Dispersión con Jitter (Interactivo)', child: GraphicAdvancedChart09()),
      const ChartCard(title: 'A10. Radar de Área (Interactivo)', child: GraphicAdvancedChart10()),
      const ChartCard(title: 'A11. Radar Suavizado (Interactivo)', child: GraphicAdvancedChart11()),
      const ChartCard(title: 'A12. Rosa de los Vientos (Interactivo)', child: GraphicAdvancedChart12()),
      const ChartCard(title: 'A13. Pastel (Pie) (Interactivo)', child: GraphicAdvancedChart13()),
      const ChartCard(title: 'A14. Dona (Doughnut) (Interactivo)', child: GraphicAdvancedChart14()),
      const ChartCard(title: 'A15. Área Translúcida (Interactivo)', child: GraphicAdvancedChart15()),
      const ChartCard(title: 'A16. Combo Columna + Punto (Interactivo)', child: GraphicAdvancedChart16()),
      const ChartCard(title: 'A17. Columnas Apiladas (Interactivo)', child: GraphicAdvancedChart17()),
      const ChartCard(title: 'A18. Columnas Agrupadas (Interactivo)', child: GraphicAdvancedChart18()),
      const ChartCard(title: 'A19. Barras Apiladas HZ (Interactivo)', child: GraphicAdvancedChart19()),
      const ChartCard(title: 'A20. Barras Agrupadas HZ (Interactivo)', child: GraphicAdvancedChart20()),
      const ChartCard(title: 'A21. Área Apilada + Línea (Interactivo)', child: GraphicAdvancedChart21()),
      const ChartCard(title: 'A22. Streamgraph Simétrico (Interactivo)', child: GraphicAdvancedChart22()),
      const ChartCard(title: 'A23. Spline + Puntos (Interactivo)', child: GraphicAdvancedChart23()),
      const ChartCard(title: 'A24. Líneas Punteadas (Interactivo)', child: GraphicAdvancedChart24()),
      const ChartCard(title: 'A25. Dispersión con Jitter (Interactivo)', child: GraphicAdvancedChart25()),
      const ChartCard(title: 'A26. Radar de Área (Interactivo)', child: GraphicAdvancedChart26()),
      const ChartCard(title: 'A27. Radar Suavizado (Interactivo)', child: GraphicAdvancedChart27()),
      const ChartCard(title: 'A28. Rosa de los Vientos (Interactivo)', child: GraphicAdvancedChart28()),
      const ChartCard(title: 'A29. Pastel (Pie) (Interactivo)', child: GraphicAdvancedChart29()),
      const ChartCard(title: 'A30. Dona (Doughnut) (Interactivo)', child: GraphicAdvancedChart30()),
      const ChartCard(title: 'A31. Área Translúcida (Interactivo)', child: GraphicAdvancedChart31()),
      const ChartCard(title: 'A32. Combo Columna + Punto (Interactivo)', child: GraphicAdvancedChart32()),
      const ChartCard(title: 'A33. Columnas Apiladas (Interactivo)', child: GraphicAdvancedChart33()),
      const ChartCard(title: 'A34. Columnas Agrupadas (Interactivo)', child: GraphicAdvancedChart34()),
      const ChartCard(title: 'A35. Barras Apiladas HZ (Interactivo)', child: GraphicAdvancedChart35()),
      const ChartCard(title: 'A36. Barras Agrupadas HZ (Interactivo)', child: GraphicAdvancedChart36()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Graphic Avanzados (1-36)')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: charts.length,
        itemBuilder: (context, index) => charts[index],
      ),
    );
  }
}

class ChartCard extends StatelessWidget {
  final String title;
  final Widget child;
  const ChartCard({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            SizedBox(height: 300, child: child),
          ],
        ),
      ),
    );
  }
}

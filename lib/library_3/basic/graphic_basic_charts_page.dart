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
import 'chart_37.dart';
import 'chart_38.dart';
import 'chart_39.dart';
import 'chart_40.dart';
import 'chart_41.dart';
import 'chart_42.dart';
import 'chart_43.dart';

class GraphicBasicChartsPage extends StatelessWidget {
  const GraphicBasicChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'B01. Columnas Simples', child: GraphicBasicChart01()),
      const ChartCard(title: 'B02. Barras Horizontales', child: GraphicBasicChart02()),
      const ChartCard(title: 'B03. Línea Simple', child: GraphicBasicChart03()),
      const ChartCard(title: 'B04. Área Simple', child: GraphicBasicChart04()),
      const ChartCard(title: 'B05. Puntos (Scatter)', child: GraphicBasicChart05()),
      const ChartCard(title: 'B06. Gráfico de Pastel', child: GraphicBasicChart06()),
      const ChartCard(title: 'B07. Gráfico de Dona', child: GraphicBasicChart07()),
      const ChartCard(title: 'B08. Gráfico de Rosa', child: GraphicBasicChart08()),
      const ChartCard(title: 'B09. Radar Simple (Área Polar)', child: GraphicBasicChart09()),
      const ChartCard(title: 'B10. Radar Simple (Línea Polar)', child: GraphicBasicChart10()),
      const ChartCard(title: 'B11. Columnas Agrupadas (Dodge)', child: GraphicBasicChart11()),
      const ChartCard(title: 'B12. Columnas Apiladas (Stack)', child: GraphicBasicChart12()),
      const ChartCard(title: 'B13. Barras Agrupadas Horizontales', child: GraphicBasicChart13()),
      const ChartCard(title: 'B14. Barras Apiladas Horizontales', child: GraphicBasicChart14()),
      const ChartCard(title: 'B15. Líneas Múltiples', child: GraphicBasicChart15()),
      const ChartCard(title: 'B16. Áreas Múltiples Apiladas', child: GraphicBasicChart16()),
      const ChartCard(title: 'B17. Áreas Simétricas (Streamgraph)', child: GraphicBasicChart17()),
      const ChartCard(title: 'B18. Puntos Agrupados (Jitter)', child: GraphicBasicChart18()),
      const ChartCard(title: 'B19. Línea + Puntos (Combo)', child: GraphicBasicChart19()),
      const ChartCard(title: 'B20. Área + Línea (Combo)', child: GraphicBasicChart20()),
      const ChartCard(title: 'B21. Variación Graphic LineMark', child: GraphicBasicChart21()),
      const ChartCard(title: 'B22. Variación Graphic AreaMark', child: GraphicBasicChart22()),
      const ChartCard(title: 'B23. Variación Graphic PointMark', child: GraphicBasicChart23()),
      const ChartCard(title: 'B24. Variación Graphic IntervalMark', child: GraphicBasicChart24()),
      const ChartCard(title: 'B25. Variación Graphic LineMark', child: GraphicBasicChart25()),
      const ChartCard(title: 'B26. Variación Graphic AreaMark', child: GraphicBasicChart26()),
      const ChartCard(title: 'B27. Variación Graphic PointMark', child: GraphicBasicChart27()),
      const ChartCard(title: 'B28. Variación Graphic IntervalMark', child: GraphicBasicChart28()),
      const ChartCard(title: 'B29. Variación Graphic LineMark', child: GraphicBasicChart29()),
      const ChartCard(title: 'B30. Variación Graphic AreaMark', child: GraphicBasicChart30()),
      const ChartCard(title: 'B31. Variación Graphic PointMark', child: GraphicBasicChart31()),
      const ChartCard(title: 'B32. Variación Graphic IntervalMark', child: GraphicBasicChart32()),
      const ChartCard(title: 'B33. Variación Graphic LineMark', child: GraphicBasicChart33()),
      const ChartCard(title: 'B34. Variación Graphic AreaMark', child: GraphicBasicChart34()),
      const ChartCard(title: 'B35. Variación Graphic PointMark', child: GraphicBasicChart35()),
      const ChartCard(title: 'B36. Variación Graphic IntervalMark', child: GraphicBasicChart36()),
      const ChartCard(title: 'B37. Variación Graphic LineMark', child: GraphicBasicChart37()),
      const ChartCard(title: 'B38. Variación Graphic AreaMark', child: GraphicBasicChart38()),
      const ChartCard(title: 'B39. Variación Graphic PointMark', child: GraphicBasicChart39()),
      const ChartCard(title: 'B40. Variación Graphic IntervalMark', child: GraphicBasicChart40()),
      const ChartCard(title: 'B41. Variación Graphic LineMark', child: GraphicBasicChart41()),
      const ChartCard(title: 'B42. Variación Graphic AreaMark', child: GraphicBasicChart42()),
      const ChartCard(title: 'B43. Variación Graphic PointMark', child: GraphicBasicChart43()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Graphic Básicos (1-43)')),
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

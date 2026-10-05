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

class CommunityBasicChartsPage extends StatelessWidget {
  const CommunityBasicChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'B01. Columnas Simples (Red)', child: CommunityBasicChart01()),
      const ChartCard(title: 'B02. Barras Horizontales (Green)', child: CommunityBasicChart02()),
      const ChartCard(title: 'B03. Línea Simple (Purple)', child: CommunityBasicChart03()),
      const ChartCard(title: 'B04. Área Simple (Teal)', child: CommunityBasicChart04()),
      const ChartCard(title: 'B05. Gráfico de Pastel (Cyan)', child: CommunityBasicChart05()),
      const ChartCard(title: 'B06. Gráfico de Dona (Indigo)', child: CommunityBasicChart06()),
      const ChartCard(title: 'B07. Dispersión (Scatter) (Pink)', child: CommunityBasicChart07()),
      const ChartCard(title: 'B08. Línea con Puntos (Deeporange)', child: CommunityBasicChart08()),
      const ChartCard(title: 'B09. Columnas Agrupadas (Lime)', child: CommunityBasicChart09()),
      const ChartCard(title: 'B10. Columnas Apiladas (Blue)', child: CommunityBasicChart10()),
      const ChartCard(title: 'B11. Columnas Simples (Red)', child: CommunityBasicChart11()),
      const ChartCard(title: 'B12. Barras Horizontales (Green)', child: CommunityBasicChart12()),
      const ChartCard(title: 'B13. Línea Simple (Purple)', child: CommunityBasicChart13()),
      const ChartCard(title: 'B14. Área Simple (Teal)', child: CommunityBasicChart14()),
      const ChartCard(title: 'B15. Gráfico de Pastel (Cyan)', child: CommunityBasicChart15()),
      const ChartCard(title: 'B16. Gráfico de Dona (Indigo)', child: CommunityBasicChart16()),
      const ChartCard(title: 'B17. Dispersión (Scatter) (Pink)', child: CommunityBasicChart17()),
      const ChartCard(title: 'B18. Línea con Puntos (Deeporange)', child: CommunityBasicChart18()),
      const ChartCard(title: 'B19. Columnas Agrupadas (Lime)', child: CommunityBasicChart19()),
      const ChartCard(title: 'B20. Columnas Apiladas (Blue)', child: CommunityBasicChart20()),
      const ChartCard(title: 'B21. Columnas Simples (Red)', child: CommunityBasicChart21()),
      const ChartCard(title: 'B22. Barras Horizontales (Green)', child: CommunityBasicChart22()),
      const ChartCard(title: 'B23. Línea Simple (Purple)', child: CommunityBasicChart23()),
      const ChartCard(title: 'B24. Área Simple (Teal)', child: CommunityBasicChart24()),
      const ChartCard(title: 'B25. Gráfico de Pastel (Cyan)', child: CommunityBasicChart25()),
      const ChartCard(title: 'B26. Gráfico de Dona (Indigo)', child: CommunityBasicChart26()),
      const ChartCard(title: 'B27. Dispersión (Scatter) (Pink)', child: CommunityBasicChart27()),
      const ChartCard(title: 'B28. Línea con Puntos (Deeporange)', child: CommunityBasicChart28()),
      const ChartCard(title: 'B29. Columnas Agrupadas (Lime)', child: CommunityBasicChart29()),
      const ChartCard(title: 'B30. Columnas Apiladas (Blue)', child: CommunityBasicChart30()),
      const ChartCard(title: 'B31. Columnas Simples (Red)', child: CommunityBasicChart31()),
      const ChartCard(title: 'B32. Barras Horizontales (Green)', child: CommunityBasicChart32()),
      const ChartCard(title: 'B33. Línea Simple (Purple)', child: CommunityBasicChart33()),
      const ChartCard(title: 'B34. Área Simple (Teal)', child: CommunityBasicChart34()),
      const ChartCard(title: 'B35. Gráfico de Pastel (Cyan)', child: CommunityBasicChart35()),
      const ChartCard(title: 'B36. Gráfico de Dona (Indigo)', child: CommunityBasicChart36()),
      const ChartCard(title: 'B37. Dispersión (Scatter) (Pink)', child: CommunityBasicChart37()),
      const ChartCard(title: 'B38. Línea con Puntos (Deeporange)', child: CommunityBasicChart38()),
      const ChartCard(title: 'B39. Columnas Agrupadas (Lime)', child: CommunityBasicChart39()),
      const ChartCard(title: 'B40. Columnas Apiladas (Blue)', child: CommunityBasicChart40()),
      const ChartCard(title: 'B41. Columnas Simples (Red)', child: CommunityBasicChart41()),
      const ChartCard(title: 'B42. Barras Horizontales (Green)', child: CommunityBasicChart42()),
      const ChartCard(title: 'B43. Línea Simple (Purple)', child: CommunityBasicChart43()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Community Charts Básicos (1-43)')),
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

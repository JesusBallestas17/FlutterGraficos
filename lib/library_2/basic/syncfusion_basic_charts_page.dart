import 'package:flutter/material.dart';
import 'chart_01.dart'; import 'chart_02.dart'; import 'chart_03.dart'; import 'chart_04.dart';
import 'chart_05.dart'; import 'chart_06.dart'; import 'chart_07.dart'; import 'chart_08.dart';
import 'chart_09.dart'; import 'chart_10.dart'; import 'chart_11.dart'; import 'chart_12.dart';
import 'chart_13.dart'; import 'chart_14.dart'; import 'chart_15.dart'; import 'chart_16.dart';
import 'chart_17.dart'; import 'chart_18.dart'; import 'chart_19.dart'; import 'chart_20.dart';
import 'chart_21.dart'; import 'chart_22.dart'; import 'chart_23.dart'; import 'chart_24.dart';
import 'chart_25.dart'; import 'chart_26.dart'; import 'chart_27.dart'; import 'chart_28.dart';
import 'chart_29.dart'; import 'chart_30.dart'; import 'chart_31.dart'; import 'chart_32.dart';
import 'chart_33.dart'; import 'chart_34.dart'; import 'chart_35.dart'; import 'chart_36.dart';
import 'chart_37.dart'; import 'chart_38.dart'; import 'chart_39.dart'; import 'chart_40.dart';
import 'chart_41.dart'; import 'chart_42.dart'; import 'chart_43.dart';

class SyncfusionBasicChartsPage extends StatelessWidget {
  const SyncfusionBasicChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'B01. Columnas (Ingresos Mensuales)', child: BasicChart01()),
      const ChartCard(title: 'B02. Barras Horizontales (Categorías)', child: BasicChart02()),
      const ChartCard(title: 'B03. Línea Simple (Evolución)', child: BasicChart03()),
      const ChartCard(title: 'B04. Área Simple (Volumen)', child: BasicChart04()),
      const ChartCard(title: 'B05. Circular / Pie (Distribución)', child: BasicChart05()),
      const ChartCard(title: 'B06. Dona / Doughnut (Proporción)', child: BasicChart06()),
      const ChartCard(title: 'B07. Barras Radiales (KPIs)', child: BasicChart07()),
      const ChartCard(title: 'B08. Spline (Línea Suavizada)', child: BasicChart08()),
      const ChartCard(title: 'B09. Línea Escalonada (Step Line)', child: BasicChart09()),
      const ChartCard(title: 'B10. Dispersión Simple (Scatter)', child: BasicChart10()),
      const ChartCard(title: 'B11. Burbujas (Bubble)', child: BasicChart11()),
      const ChartCard(title: 'B12. Área Spline (Área Suavizada)', child: BasicChart12()),
      const ChartCard(title: 'B13. Área Escalonada (Step Area)', child: BasicChart13()),
      const ChartCard(title: 'B14. Columnas Apiladas (Stacked)', child: BasicChart14()),
      const ChartCard(title: 'B15. Barras Apiladas Horizontales', child: BasicChart15()),
      const ChartCard(title: 'B16. Áreas Apiladas', child: BasicChart16()),
      const ChartCard(title: 'B17. Líneas Apiladas', child: BasicChart17()),
      const ChartCard(title: 'B18. Columnas 100% Apiladas', child: BasicChart18()),
      const ChartCard(title: 'B19. Barras 100% Apiladas', child: BasicChart19()),
      const ChartCard(title: 'B20. Áreas 100% Apiladas', child: BasicChart20()),
      const ChartCard(title: 'B21. Columnas Anchas (Espaciado ajustado)', child: BasicChart21()),
      const ChartCard(title: 'B22. Barras Delgadas (Espaciado entre grupos)', child: BasicChart22()),
      const ChartCard(title: 'B23. Línea con Etiquetas Visibles', child: BasicChart23()),
      const ChartCard(title: 'B24. Línea con Marcadores (Puntos)', child: BasicChart24()),
      const ChartCard(title: 'B25. Área con Borde Destacado', child: BasicChart25()),
      const ChartCard(title: 'B26. Pie con Segmento Explotado', child: BasicChart26()),
      const ChartCard(title: 'B27. Media Dona (Semi-Doughnut)', child: BasicChart27()),
      const ChartCard(title: 'B28. Barras Radiales con Track de Color', child: BasicChart28()),
      const ChartCard(title: 'B29. Spline con Etiquetas Numeradas', child: BasicChart29()),
      const ChartCard(title: 'B30. Step Line Simple con Color Oscuro', child: BasicChart30()),
      const ChartCard(title: 'B31. Scatter Simple (Triángulos)', child: BasicChart31()),
      const ChartCard(title: 'B32. Bubble Básico (Opacidad Variable)', child: BasicChart32()),
      const ChartCard(title: 'B33. Stacked Column Básica (2 Series)', child: BasicChart33()),
      const ChartCard(title: 'B34. Range Column Simple', child: BasicChart34()),
      const ChartCard(title: 'B35. Range Area Simple', child: BasicChart35()),
      const ChartCard(title: 'B36. Funnel Simple (Embudo)', child: BasicChart36()),
      const ChartCard(title: 'B37. Pyramid Simple (Pirámide)', child: BasicChart37()),
      const ChartCard(title: 'B38. Waterfall Simple (Cascada Básica)', child: BasicChart38()),
      const ChartCard(title: 'B39. Candle Simple (Velas Japonesas)', child: BasicChart39()),
      const ChartCard(title: 'B40. Hilo Simple (High-Low)', child: BasicChart40()),
      const ChartCard(title: 'B41. Histogram Simple (Frecuencias)', child: BasicChart41()),
      const ChartCard(title: 'B42. Box and Whisker Simple (Cajas)', child: BasicChart42()),
      const ChartCard(title: 'B43. Combo Básico (Columna + Línea)', child: BasicChart43()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Básicos (Completos)')),
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

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

class CommunityAdvancedChartsPage extends StatelessWidget {
  const CommunityAdvancedChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'A01. Barras con Leyenda Múltiple', child: CommunityAdvancedChart01()),
      const ChartCard(title: 'A02. Barras Agrupadas Interactivas', child: CommunityAdvancedChart02()),
      const ChartCard(title: 'A03. Barras Apiladas + Leyenda', child: CommunityAdvancedChart03()),
      const ChartCard(title: 'A04. Barras Horizontales con Leyenda', child: CommunityAdvancedChart04()),
      const ChartCard(title: 'A05. Highlight de Columnas', child: CommunityAdvancedChart05()),
      const ChartCard(title: 'A06. Etiquetas en Columnas', child: CommunityAdvancedChart06()),
      const ChartCard(title: 'A07. Rotación de Ejes (45°)', child: CommunityAdvancedChart07()),
      const ChartCard(title: 'A08. Modo Minimalista (Ejes Ocultos)', child: CommunityAdvancedChart08()),
      const ChartCard(title: 'A09. Columnas con Bordes Redondeados', child: CommunityAdvancedChart09()),
      const ChartCard(title: 'A10. Líneas Multi-Serie con Leyenda', child: CommunityAdvancedChart10()),
      const ChartCard(title: 'A11. Áreas Apiladas Multi-Serie', child: CommunityAdvancedChart11()),
      const ChartCard(title: 'A12. Líneas con Puntos Dinámicos', child: CommunityAdvancedChart12()),
      const ChartCard(title: 'A13. Selector Cruzado (Crosshair)', child: CommunityAdvancedChart13()),
      const ChartCard(title: 'A14. Anotación de Rango (Zonas)', child: CommunityAdvancedChart14()),
      const ChartCard(title: 'A15. Zoom y Desplazamiento Nativo', child: CommunityAdvancedChart15()),
      const ChartCard(title: 'A16. Línea con Viewport Inicial', child: CommunityAdvancedChart16()),
      const ChartCard(title: 'A17. Control de Ticks (Múltiples)', child: CommunityAdvancedChart17()),
      const ChartCard(title: 'A18. Líneas Punteadas Custom', child: CommunityAdvancedChart18()),
      const ChartCard(title: 'A19. Pastel con Datum Legend', child: CommunityAdvancedChart19()),
      const ChartCard(title: 'A20. Dona con Datum Legend Inferior', child: CommunityAdvancedChart20()),
      const ChartCard(title: 'A21. Dona con Etiquetas Interiores', child: CommunityAdvancedChart21()),
      const ChartCard(title: 'A22. Pastel con Etiquetas Exteriores', child: CommunityAdvancedChart22()),
      const ChartCard(title: 'A23. Dispersión con Leyenda Múltiple', child: CommunityAdvancedChart23()),
      const ChartCard(title: 'A24. Dispersión Exploratoria (Zoom)', child: CommunityAdvancedChart24()),
      const ChartCard(title: 'A25. Gráfico de Burbujas Dinámico', child: CommunityAdvancedChart25()),
      const ChartCard(title: 'A26. Combo Ordinal (Barras + Línea)', child: CommunityAdvancedChart26()),
      const ChartCard(title: 'A27. Combo Numérico (Área + Línea)', child: CommunityAdvancedChart27()),
      const ChartCard(title: 'A28. Doble Eje de Medida (Barras)', child: CommunityAdvancedChart28()),
      const ChartCard(title: 'A29. Doble Eje de Medida (Líneas)', child: CommunityAdvancedChart29()),
      const ChartCard(title: 'A30. Time Series (Series de Tiempo)', child: CommunityAdvancedChart30()),
      const ChartCard(title: 'A31. Time Series con Pan & Zoom', child: CommunityAdvancedChart31()),
      const ChartCard(title: 'A32. Columnas Deslizables', child: CommunityAdvancedChart32()),
      const ChartCard(title: 'A33. Línea con Anotación de Dominio', child: CommunityAdvancedChart33()),
      const ChartCard(title: 'A34. Línea con Marcador de Meta Y', child: CommunityAdvancedChart34()),
      const ChartCard(title: 'A35. Línea Stroke Extra Grueso', child: CommunityAdvancedChart35()),
      const ChartCard(title: 'A36. Dispersión con Grilla Personalizada', child: CommunityAdvancedChart36()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Community Charts Avanzados (1-36)')),
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

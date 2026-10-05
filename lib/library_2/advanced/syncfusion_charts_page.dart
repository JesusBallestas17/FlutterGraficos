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

class SyncfusionChartsPage extends StatelessWidget {
  const SyncfusionChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'A01. Área con Gradiente (Trackball)', child: Chart01()),
      const ChartCard(title: 'A02. Columnas 100% Apiladas', child: Chart02()),
      const ChartCard(title: 'A03. Barras Agrupadas (Selección)', child: Chart03()),
      const ChartCard(title: 'A04. Línea con Tendencia Polinómica', child: Chart04()),
      const ChartCard(title: 'A05. Dona con Centro Dinámico', child: Chart05()),
      const ChartCard(title: 'A06. Cascada (Ingresos y Pérdidas)', child: Chart06()),
      const ChartCard(title: 'A07. Rango de Columnas (Min/Max)', child: Chart07()),
      const ChartCard(title: 'A08. Múltiples Ejes Y (Combinado)', child: Chart08()),
      const ChartCard(title: 'A09. Burbujas por Volumen', child: Chart09()),
      const ChartCard(title: 'A10. Barras con Bordes Redondeados', child: Chart10()),
      const ChartCard(title: 'A11. Barras Radiales Comparativas', child: Chart11()),
      const ChartCard(title: 'A12. Embudo de Conversión', child: Chart12()),
      const ChartCard(title: 'A13. Pirámide Jerárquica', child: Chart13()),
      const ChartCard(title: 'A14. Área Escalonada', child: Chart14()),
      const ChartCard(title: 'A15. Box and Whisker (Dispersión)', child: Chart15()),
      const ChartCard(title: 'A16. Scatter con Zoom Dinámico', child: Chart16()),
      const ChartCard(title: 'A17. Spline con Plot Bands (Zonas)', child: Chart17()),
      const ChartCard(title: 'A18. Línea con Marcadores Custom', child: Chart18()),
      const ChartCard(title: 'A19. Áreas Apiladas (Volumen Acumulado)', child: Chart19()),
      const ChartCard(title: 'A20. Gráfico Polar (Rosa de los vientos)', child: Chart20()),
      const ChartCard(title: 'A21. Barras Apiladas Horizontales', child: Chart21()),
      const ChartCard(title: 'A22. Histograma de Frecuencias', child: Chart22()),
      const ChartCard(title: 'A23. Área de Rango Acotado', child: Chart23()),
      const ChartCard(title: 'A24. Área de Rango Spline', child: Chart24()),
      const ChartCard(title: 'A25. Línea Escalonada Continua', child: Chart25()),
      const ChartCard(title: 'A26. Gráfico de Velas (Ventas/Stock)', child: Chart26()),
      const ChartCard(title: 'A27. Gráfico Hilo (High-Low)', child: Chart27()),
      const ChartCard(title: 'A28. Pastel Explosivo (Destacado)', child: Chart28()),
      const ChartCard(title: 'A29. Anillo con Rastros y Leyenda', child: Chart29()),
      const ChartCard(title: 'A30. Áreas Apiladas 100% (Proporciones)', child: Chart30()),
      const ChartCard(title: 'A31. Barras Superpuestas (Overlapped)', child: Chart31()),
      const ChartCard(title: 'A32. Líneas de Alta Densidad (FastLine)', child: Chart32()),
      const ChartCard(title: 'A33. Barras de Rango Transpuestas', child: Chart33()),
      const ChartCard(title: 'A34. Columnas con Anotaciones', child: Chart34()),
      const ChartCard(title: 'A35. Barras de Error (Desviación)', child: Chart35()),
      const ChartCard(title: 'A36. Dashboard de Rendimiento (Combo)', child: Chart36()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Avanzados (Completos)')),
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

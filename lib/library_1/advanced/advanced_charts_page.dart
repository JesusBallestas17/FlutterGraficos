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

class AdvancedChartsPage extends StatelessWidget {
  const AdvancedChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      const ChartCard(title: 'A01. Ingresos vs Gastos (Barras Apiladas)', child: Chart01()),
      const ChartCard(title: 'A02. 3 Categorías Mes a Mes (100% normalizadas)', child: Chart02()),
      const ChartCard(title: 'A03. 4 Productos (Barras Agrupadas)', child: Chart03()),
      const ChartCard(title: 'A04. Ingresos vs Meta (Combinación Línea + Barra)', child: Chart04()),
      const ChartCard(title: 'A05. Proyección Ingresos (Área de rango)', child: Chart05()),
      const ChartCard(title: 'A06. Ingresos interactivos (Línea Touch)', child: Chart06()),
      const ChartCard(title: 'A07. Ingresos (Barras Touch)', child: Chart07()),
      const ChartCard(title: 'A08. Distribución con Explosión al tocar', child: Chart08()),
      const ChartCard(title: 'A09. Radar 3 Zonas comparativas', child: Chart09()),
      const ChartCard(title: 'A10. Scatter con Tooltips dinámicos', child: Chart10()),
      const ChartCard(title: 'A11. Ingresos Anuales con Cruces', child: Chart11()),
      const ChartCard(title: 'A12. Ventas por Rango (Zonas coloreadas)', child: Chart12()),
      const ChartCard(title: 'A13. Alerta de Ingreso bajo (Interactivo)', child: Chart13()),
      const ChartCard(title: 'A14. Histórico Mensual + Línea de Tendencia', child: Chart14()),
      const ChartCard(title: 'A15. Ingresos por trimestres (Badges)', child: Chart15()),
      const ChartCard(title: 'A16. Área de Ingresos (Línea con Gradiente)', child: Chart16()),
      const ChartCard(title: 'A17. Ejecución vs Capacidad (Fondo de Barra)', child: Chart17()),
      const ChartCard(title: 'A18. Dona de Categorías (Centro interactivo)', child: Chart18()),
      const ChartCard(title: 'A19. Evolución Escalonada (Step Line)', child: Chart19()),
      const ChartCard(title: 'A20. Ganancias y Pérdidas (Barras Pos/Neg)', child: Chart20()),
      const ChartCard(title: 'A21. Rangos de Precio (Barras flotantes)', child: Chart21()),
      const ChartCard(title: 'A22. Volumen de Transacciones (Burbujas/Scatter)', child: Chart22()),
      const ChartCard(title: 'A23. Umbral de Rentabilidad (Área con CutOff)', child: Chart23()),
      const ChartCard(title: 'A24. Proyección Alternativa (Línea Punteada)', child: Chart24()),
      const ChartCard(title: 'A25. Desglose con Gradientes (Barras Apiladas)', child: Chart25()),
      const ChartCard(title: 'A26. Comparativa Nocturna (Radar Dark Mode)', child: Chart26()),
      const ChartCard(title: 'A27. Metas Puntuales (Combo Barras + Scatter)', child: Chart27()),
      const ChartCard(title: 'A28. Zonas de Tolerancia (Múltiples Áreas)', child: Chart28()),
      const ChartCard(title: 'A29. Alta Densidad (5 variables agrupadas)', child: Chart29()),
      const ChartCard(title: 'A30. Torta Separada con Insignias', child: Chart30()),
      const ChartCard(title: 'A31. Tendencia con Sombra (Línea)', child: Chart31()),
      const ChartCard(title: 'A32. Barras Superpuestas (Superposición UI)', child: Chart32()),
      const ChartCard(title: 'A33. Hitos Temporales (Anotaciones Verticales)', child: Chart33()),
      const ChartCard(title: 'A34. Puntos Críticos (Custom Dot Painter)', child: Chart34()),
      const ChartCard(title: 'A35. Bordes Destacados (Barras Transparentes)', child: Chart35()),
      const ChartCard(title: 'A36. Dashboard Maestro (Triple Combo)', child: Chart36()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Gráficos Avanzados (Completos)')),
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

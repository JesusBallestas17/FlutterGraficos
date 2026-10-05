import 'package:flutter/material.dart';
import 'chart_01.dart'; import 'chart_02.dart'; import 'chart_03.dart';
import 'chart_04.dart'; import 'chart_05.dart'; import 'chart_06.dart';
import 'chart_07.dart'; import 'chart_08.dart'; import 'chart_09.dart';
import 'chart_10.dart'; import 'chart_11.dart'; import 'chart_12.dart';
import 'chart_13.dart'; import 'chart_14.dart'; import 'chart_15.dart';
import 'chart_16.dart'; import 'chart_17.dart'; import 'chart_18.dart';
import 'chart_19.dart'; import 'chart_20.dart'; import 'chart_21.dart';
import 'chart_22.dart'; import 'chart_23.dart'; import 'chart_24.dart';
import 'chart_25.dart'; import 'chart_26.dart'; import 'chart_27.dart';
import 'chart_28.dart'; import 'chart_29.dart'; import 'chart_30.dart';
import 'chart_31.dart'; import 'chart_32.dart'; import 'chart_33.dart';
import 'chart_34.dart'; import 'chart_35.dart'; import 'chart_36.dart';
import 'chart_37.dart'; import 'chart_38.dart'; import 'chart_39.dart';
import 'chart_40.dart'; import 'chart_41.dart'; import 'chart_42.dart';
import 'chart_43.dart';
class BasicChartsPage1 extends StatelessWidget {
  const BasicChartsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FL Chart - Básicos (1-15)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ChartCard(title: 'B01. Ingresos Anuales (Línea simple)', child: Chart01()),
          ChartCard(title: 'B02. Ingresos Semestrales (Línea curva)', child: Chart02()),
          ChartCard(title: 'B03. Ingresos Mensuales (Línea con puntos)', child: Chart03()),
          ChartCard(title: 'B04. Ingresos Trimestrales (Línea escalonada)', child: Chart04()),
          ChartCard(title: 'B05. Ingresos Diarios (Sin ejes)', child: Chart05()),
          ChartCard(title: 'B06. Ingresos vs Mes (Área sólida)', child: Chart06()),
          ChartCard(title: 'B07. Ingresos vs Mes (Área gradiente)', child: Chart07()),
          ChartCard(title: 'B08. Ingresos Mensuales (Barras simples)', child: Chart08()),
          ChartCard(title: 'B09. Ingresos por Región (Barras gruesas)', child: Chart09()),
          ChartCard(title: 'B10. Ingresos con pérdida (Valores neg.)', child: Chart10()),
          ChartCard(title: 'B11. Ingresos Sucursal (Bordes redondos)', child: Chart11()),
          ChartCard(title: 'B12. Ingresos Semanales (Sin grid)', child: Chart12()),
          ChartCard(title: 'B13. Ingresos Ropa (Barras horizontales)', child: Chart13()),
          ChartCard(title: 'B14. Ingresos Calzado (Línea base distinta)', child: Chart14()),
          ChartCard(title: 'B15. Distribución (Pastel simple)', child: Chart15()),
          ChartCard(title: 'B16. Ingresos por Producto (Dona)', child: Chart16()),
          ChartCard(title: 'B17. Categoría Estrella (Sección resaltada)', child: Chart17()),
          ChartCard(title: 'B18. Ingresos Menores (Pastel sin bordes)', child: Chart18()),
          ChartCard(title: 'B19. Dispersión Ventas (Puntos simples)', child: Chart19()),
          ChartCard(title: 'B20. Dispersión Alta Gama (Puntos grandes)', child: Chart20()),
          ChartCard(title: 'B21. Dispersión Festivos (Color variable)', child: Chart21()),
          ChartCard(title: 'B22. Comparativa KPI (Radar simple)', child: Chart22()),
          ChartCard(title: 'B23. KPI por Zonas (Radar relleno)', child: Chart23()),
          ChartCard(title: 'B24. Norte vs Sur (2 líneas)', child: Chart24()),
          ChartCard(title: 'B25. Este vs Oeste (2 barras agrupadas)', child: Chart25()),
          ChartCard(title: 'B26. Ingresos Mes 1 (Línea punteada)', child: Chart26()),
          ChartCard(title: 'B27. Ingresos vs Meta (Línea límite)', child: Chart27()),
          ChartCard(title: 'B28. Ingresos Fin de semana (Color dinámico)', child: Chart28()),
          ChartCard(title: 'B29. Gráfica con fondo tintado', child: Chart29()),
          ChartCard(title: 'B30. Rendimiento Q1 (Semicírculo)', child: Chart30()),
          ChartCard(title: 'B31. Ingresos Anuales (Títulos X rotados)', child: Chart31()),
          ChartCard(title: 'B32. Ingresos (Grid solo horizontal)', child: Chart32()),
          ChartCard(title: 'B33. Ingresos (Grid solo vertical)', child: Chart33()),
          ChartCard(title: 'B34. Tendencia Mensual (Línea con sombra)', child: Chart34()),
          ChartCard(title: 'B35. Top 5 Vendedores (Barras delgadas)', child: Chart35()),
          ChartCard(title: 'B36. Ingresos Perfumería (Línea sin puntos)', child: Chart36()),
          ChartCard(title: 'B37. Ingresos Accesorios (Área cortada)', child: Chart37()),
          ChartCard(title: 'B38. Volumen de ventas (Scatter cuadrado)', child: Chart38()),
          ChartCard(title: 'B39. Ingresos (Background bar máximo)', child: Chart39()),
          ChartCard(title: 'B40. Ingresos Anuales (Títulos custom)', child: Chart40()),
          ChartCard(title: 'B41. Ingresos vs Día (Radar sin interior)', child: Chart41()),
          ChartCard(title: 'B42. Comparativa 2 productos (Pastel)', child: Chart42()),
          ChartCard(title: 'B43. Historial 10 años (Alta densidad)', child: Chart43()),
        ],
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
      margin: const EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 16),
            SizedBox(height: 250, child: child),
          ],
        ),
      ),
    );
  }
}
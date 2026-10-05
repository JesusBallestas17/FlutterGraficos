import 'package:flutter/material.dart';

// Importaciones de Librería 1 (FL Chart)
import '../library_1/basic/basic_charts_page.dart';
import '../library_1/advanced/advanced_charts_page.dart';

// Importaciones de Librería 2 (Syncfusion)
import '../library_2/basic/syncfusion_basic_charts_page.dart'; 
import '../library_2/advanced/syncfusion_charts_page.dart'; 

// Importación de Librería 3 (Graphic)
import '../library_3/basic/graphic_basic_charts_page.dart';
import '../library_3/advanced/graphic_advanced_charts_page.dart';

// Importación de Librería 4 (Community Charts)
import '../library_4/basic/community_basic_charts_page.dart';
import '../library_4/advanced/community_advanced_charts_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('REPORTES DE INGRESOS')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // LIBRERÍA 1
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BasicChartsPage1())),
            child: const Text('FL CHART - Gráficos Básicos'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AdvancedChartsPage())), 
            child: const Text('FL CHART - Gráficos Avanzados')
          ),
          
          const SizedBox(height: 24),
          
          // LIBRERÍA 2
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SyncfusionBasicChartsPage())), 
            child: const Text('SYNCFUSION - Gráficos Básicos')
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SyncfusionChartsPage())), 
            child: const Text('SYNCFUSION - Gráficos Avanzados')
          ),

          const SizedBox(height: 24),

          // LIBRERÍA 3
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GraphicBasicChartsPage())), 
            child: const Text('GRAPHIC - Gráficos Básicos') // <- Botón habilitado
          ),
          ElevatedButton(
  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GraphicAdvancedChartsPage())), 
  child: const Text('GRAPHIC - Gráficos Avanzados')
),

          const SizedBox(height: 24),
          
          // LIBRERÍA 4: COMMUNITY CHARTS FLUTTER
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CommunityBasicChartsPage())), 
            child: const Text('COMMUNITY CHARTS - Gráficos Básicos')
          ),
ElevatedButton(
  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CommunityAdvancedChartsPage())), 
  child: const Text('COMMUNITY CHARTS - Gráficos Avanzados')
),        ],
      ),
    );
  }
}
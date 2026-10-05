import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart12 extends StatelessWidget {
  const Chart12({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_FunnelData> data = [
      _FunnelData('Visitas', 1000), _FunnelData('Leads', 600),
      _FunnelData('Oportunidades', 300), _FunnelData('Ventas', 100),
    ];

    return SfFunnelChart(
      tooltipBehavior: TooltipBehavior(enable: true),
      series: FunnelSeries<_FunnelData, String>(
        dataSource: data,
        xValueMapper: (d, _) => d.x,
        yValueMapper: (d, _) => d.y,
        dataLabelSettings: const DataLabelSettings(isVisible: true, labelPosition: ChartDataLabelPosition.inside),
      ),
    );
  }
}

class _FunnelData { _FunnelData(this.x, this.y); final String x; final double y; }

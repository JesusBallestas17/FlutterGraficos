import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart20 extends StatelessWidget {
  const Chart20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          series: <CartesianSeries>[
            LineSeries<_ChartData, String>(
              dataSource: const [
                _ChartData('Enero', 80),
                _ChartData('Febrero', 50),
                _ChartData('Marzo', 70),
                _ChartData('Abril', 90),
              ],
              xValueMapper: (_ChartData data, _) => data.mes,
              yValueMapper: (_ChartData data, _) => data.valor,
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  const _ChartData(this.mes, this.valor);

  final String mes;
  final double valor;
}
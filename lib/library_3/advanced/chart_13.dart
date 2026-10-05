import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class GraphicAdvancedChart13 extends StatelessWidget {
  const GraphicAdvancedChart13({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {'cat': 'Trim 1', 'val': 2500, 'group': 'Norte'},
      {'cat': 'Trim 2', 'val': 5500, 'group': 'Norte'},
      {'cat': 'Trim 3', 'val': 3500, 'group': 'Norte'},
      {'cat': 'Trim 4', 'val': 6000, 'group': 'Norte'},
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: Chart(
        data: data,
        variables: {
          'cat': Variable(accessor: (Map map) => map['cat'] as String),
          'val': Variable(accessor: (Map map) => map['val'] as num),
          'group': Variable(accessor: (Map map) => map['group'] as String),
        },
        selections: {
          'tap': PointSelection(
            dim: Dim.x,
          )
        },
        tooltip: TooltipGuide(
          multiTuples: true,
          variables: ['group', 'cat', 'val'],
        ),
        marks: [IntervalMark(color: ColorEncode(variable: 'cat', values: [Colors.blue, Colors.orange, Colors.green, Colors.red]))],
        coord: PolarCoord(transposed: true),
        axes: [],
      ),
    );
  }
}

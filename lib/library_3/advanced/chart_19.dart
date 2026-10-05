import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class GraphicAdvancedChart19 extends StatelessWidget {
  const GraphicAdvancedChart19({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {'cat': 'Trim 1', 'val': 1500, 'group': 'Norte'},
      {'cat': 'Trim 2', 'val': 2500, 'group': 'Norte'},
      {'cat': 'Trim 3', 'val': 2000, 'group': 'Norte'},
      {'cat': 'Trim 4', 'val': 3500, 'group': 'Norte'},
      {'cat': 'Trim 1', 'val': 1000, 'group': 'Sur'},
      {'cat': 'Trim 2', 'val': 3000, 'group': 'Sur'},
      {'cat': 'Trim 3', 'val': 1500, 'group': 'Sur'},
      {'cat': 'Trim 4', 'val': 2500, 'group': 'Sur'},
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
        marks: [IntervalMark(modifiers: [StackModifier()], color: ColorEncode(variable: 'group', values: [Colors.purple, Colors.amber]))],
        coord: RectCoord(transposed: true),
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
      ),
    );
  }
}

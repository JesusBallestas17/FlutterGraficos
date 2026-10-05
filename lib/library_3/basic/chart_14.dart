import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class GraphicBasicChart14 extends StatelessWidget {
  const GraphicBasicChart14({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {'cat': 'Ene', 'val': 10, 'group': 'A'},
      {'cat': 'Feb', 'val': 20, 'group': 'A'},
      {'cat': 'Mar', 'val': 15, 'group': 'A'},
      {'cat': 'Abr', 'val': 30, 'group': 'A'},
      {'cat': 'Ene', 'val': 15, 'group': 'B'},
      {'cat': 'Feb', 'val': 25, 'group': 'B'},
      {'cat': 'Mar', 'val': 20, 'group': 'B'},
      {'cat': 'Abr', 'val': 35, 'group': 'B'},
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
        marks: [
          IntervalMark(
            modifiers: [StackModifier()],
            color: ColorEncode(variable: 'group', values: [Colors.cyan, Colors.deepOrange])
          )
        ],
        coord: RectCoord(transposed: true),
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
      ),
    );
  }
}

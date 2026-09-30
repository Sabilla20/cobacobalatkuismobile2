import 'package:flutter/material.dart';

class TypeChips extends StatelessWidget {
  final List<String> types;
  const TypeChips({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: types
          .map((t) => Chip(
                label: Text(t, style: TextStyle(fontSize: 12)),
                visualDensity: VisualDensity.compact,
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CoffeeType extends StatelessWidget {
  final Text text;
  final Color? color;
  const CoffeeType({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 30,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: text,
        ),
      ),
    );
  }
}

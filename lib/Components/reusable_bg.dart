import 'package:flutter/material.dart';

class ReusableBg extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  const ReusableBg({super.key, required this.color, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}

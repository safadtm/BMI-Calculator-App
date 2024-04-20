import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;
  double _bmi = 0;
  Color _textColor = Color(0xFF24D876);

  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'You have a more than nomral body weight.\n Try to do more Exercise';
    } else if (_bmi > 18.5) {
      return 'You have a nomral body weight.\n Good Job!';
    } else {
      return 'You have a lower than nomral body weight.\n Try to eat more';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return _textColor;
    }
  }

  String getText() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }
}

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor:const Color(0xFF4C4F5E),
     constraints:const BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
     ),
     elevation: 0.0,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants.dart';

const sizedbox = SizedBox(height: 15.0);

const iconSize = 80.0;

class IconConetnt extends StatelessWidget {
  final IconData myicon;
  final String text;
  const IconConetnt({
    super.key,
    required this.myicon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: iconSize,
        ),
        sizedbox,
        Text(
          text,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

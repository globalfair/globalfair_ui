import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GfSlider extends StatelessWidget {
  final double value;
  final String? label;
  final void Function(double)? onTap;
  final double max;
  final double min;
    final int? divisions;

  const GfSlider(
      {super.key,
      required this.value,
      this.label,
      this.divisions,
      this.onTap,
      this.max = 100,
      this.min = 0});

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      label: label,
      onChanged: onTap,
      divisions: divisions,
      thumbColor: gfPrimary1Color,
      activeColor: gfPrimary1Color,
      inactiveColor: gfGrey6Color,
      max: max,
      min: min,
    );
  }
}

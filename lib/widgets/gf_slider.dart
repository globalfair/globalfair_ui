import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GfSlider extends StatelessWidget {
  final double value;
  final String? label;
  final void Function(double) onTap;
  final double max;
  final bool isDisabled;
  final double min;
    final int? divisions;

  const GfSlider(
      {super.key,
      required this.value,
      this.label,
      this.divisions,
      required this.onTap,
      this.isDisabled = false,
      this.max = 100,
      this.min = 0});

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      label: label,
      onChanged: onTap,
      divisions: divisions,
      thumbColor: isDisabled == true ? gfGrey3Color : gfPrimary1Color,
      activeColor: isDisabled == true ? gfGrey3Color: gfPrimary1Color,
      inactiveColor: gfGrey6Color,
      max: max,
      min: min,
    );
  }
}

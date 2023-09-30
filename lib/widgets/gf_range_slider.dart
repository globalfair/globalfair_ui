import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GfRangeSlider extends StatelessWidget {
  final RangeValues values;
  final RangeLabels? labels;
  final int? divisions;
  final void Function(RangeValues)? onTap;
  final double max;
  final double min;
  const GfRangeSlider(
      {super.key,
      required this.values,
      this.labels,
      this.divisions,
      this.onTap,
      this.max = 100,
      this.min = 0});

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: values,
      labels: labels,
      max: max,
      divisions: divisions,
      activeColor: gfPrimary1Color,
      inactiveColor: gfGrey6Color,
      min: min,
      onChanged: onTap,
    );
  }
}

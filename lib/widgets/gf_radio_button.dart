import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';

class GfRadioButton<T> extends StatelessWidget {
  final T value;
  final T selectedOption;
  final void Function(T?)? onTap;

  const GfRadioButton({
    Key? key,
    required this.value,
    required this.onTap,
    required this.selectedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Radio<T>(
      value: value,
      groupValue: selectedOption,
      activeColor: gfPrimary1Color,
      hoverColor: gfPrimary6Color,
      fillColor: MaterialStateProperty.all(gfPrimary1Color),
      splashRadius: 10,
      onChanged: onTap,
    );
  }
}

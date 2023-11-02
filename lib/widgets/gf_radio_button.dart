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
      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return gfPrimary1Color;
        }
        if (states.contains(MaterialState.selected)) {
          return onTap ==null? gfGrey6Color: gfPrimary1Color;
        }
        return gfGrey3Color;
      }),
      splashRadius: 10,
      onChanged: onTap,
    );
  }
}

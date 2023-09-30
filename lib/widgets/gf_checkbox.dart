import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';

class GfCheckbox extends StatelessWidget {
  final bool value;
  final bool tristate;
  final void Function(bool?)? onTap;

  const GfCheckbox({
    Key? key,
    required this.onTap,
    required this.value,
    this.tristate = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onTap,
      tristate: tristate,
      activeColor: gfPrimary1Color,
      splashRadius: 10,
      side: BorderSide(
        color: value == true ? gfGrey1Color : gfPrimary1Color,
        width: 2,
      ),
    );
  }
}

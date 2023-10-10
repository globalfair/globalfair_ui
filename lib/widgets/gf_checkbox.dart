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

      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return onTap ==null? gfGrey3Color: gfPrimary1Color;
        }
        return Colors.transparent;
      }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: MaterialStateBorderSide.resolveWith((states) {
          if (onTap == null) {
            return BorderSide(
              color: gfGrey3Color,
              width: 2,
            );
          }
          if (states.contains(MaterialState.hovered)) {
            return BorderSide(
              color: gfPrimary1Color,
              width: 2,
            );
          }
          if (states.contains(MaterialState.selected)) {
            return BorderSide(
              color: gfPrimary1Color,
              width: 2,
            );
          }
          return BorderSide(
            color: gfGrey1Color,
            width: 2,
          );
        }));
  }
}

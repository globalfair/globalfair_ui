import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';

class GfSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onTap;
  const GfSwitch({
    Key? key,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onTap,
      thumbColor: MaterialStateProperty.all(gfWhiteColor),
      activeTrackColor: gfPrimary1Color,
    );
  }
}

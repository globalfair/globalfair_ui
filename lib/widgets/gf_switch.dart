import 'package:flutter/cupertino.dart';
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
    return Transform.scale(
      scale: .7,
      child: CupertinoSwitch(
        value: value,
        onChanged: onTap,
        activeColor: onTap == null ? gfPrimary3Color : gfPrimary1Color,
        thumbColor: gfWhiteColor,
        trackColor: onTap == null ? gfGrey3Color : gfGrey1Color,
      ),
    );
  }
}

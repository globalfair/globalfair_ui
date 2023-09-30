import 'package:flutter/material.dart';
import '../shared/app_colors.dart';
// ignore_for_file: prefer_const_constructors

class GfIconButton extends StatelessWidget {
  final Icon icon;
  final bool isOutlineButton;
  final bool isSolidButton;
  final void Function()? onTap;

  const GfIconButton({
    Key? key,
    required this.onTap,
    this.isOutlineButton = false,
    this.isSolidButton = false,
    required this.icon,
  }) : super(key: key);

  const GfIconButton.outline({
    Key? key,
    required this.onTap,
    this.isOutlineButton = true,
    this.isSolidButton = false,
    required this.icon,
  }) : super(key: key);

  const GfIconButton.solid({
    Key? key,
    required this.onTap,
    this.isOutlineButton = false,
    this.isSolidButton = true,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSolidButton
        ? ClipOval(
            child: TextButton(
              onPressed: onTap,
              child: icon,
              style: ButtonStyle(
                iconColor: MaterialStateProperty.all(gfWhiteColor),
                
                 overlayColor: MaterialStateProperty.resolveWith(
                      (states) {
                        return states.contains(MaterialState.pressed)
                            ? gfBlack1Color
                            : gfPrimary3Color;
                      },
                    ),
                    
                backgroundColor: MaterialStateProperty.all(
                    onTap == null ? gfGrey1Color : gfPrimary1Color),
              ),
            ),
          )
        : isOutlineButton
            ? Ink(
                decoration:  ShapeDecoration(
                  shape: CircleBorder(
                      side: BorderSide(color:  onTap == null ? gfGrey1Color : gfPrimary1Color, width: 2)),
                ),
                child: IconButton(
                  splashRadius: 22,
                  onPressed: onTap,
                  icon: icon,
                  disabledColor: gfGrey1Color,
                  hoverColor: gfPrimary7Color,
                  splashColor: gfPrimary6Color,
                ),
              )
            : ClipOval(
                child: TextButton(
                  onPressed: onTap,
                  child: icon,
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith(
                      (states) {
                        return states.contains(MaterialState.pressed)
                            ? gfPrimary6Color
                            : gfPrimary7Color;
                      },
                    ),
                  ),
                ),
              );
  }
}

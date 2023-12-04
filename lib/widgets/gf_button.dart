import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/styles.dart';
import 'package:globalfair_ui/widgets/responsive_widget.dart';

import '../shared/app_colors.dart';
import '../shared/app_size.dart';
// ignore_for_file: prefer_const_constructors

enum _ButtonType {
  filled,
  outline,
  text;
}

class GfButtonScale {
  final GfEdgeInsets padding;
  final GfTextStyle textStyle;
  final GfDouble height;

  GfButtonScale(
    this.padding,
    this.height,
    this.textStyle,
  );
  GfButtonScale.small()
      : padding = GfEdgeInsets.symmetric(
          horizontal: GfDouble.gf16,
          vertical: GfDouble.gf8,
        ),
        textStyle = GfTextStyle.b5(fontWeight: FontWeight.w400),
        height = GfDouble.gf32;
  GfButtonScale.medium()
      : padding = GfEdgeInsets.symmetric(
          horizontal: GfDouble.gf24,
          vertical: GfDouble.gf12,
        ),
        textStyle = GfTextStyle.b4(fontWeight: FontWeight.bold),
        height = GfDouble.gf40;
  GfButtonScale.large()
      : padding = GfEdgeInsets.symmetric(
          horizontal: GfDouble.gf32,
          vertical: GfDouble.gf16,
        ),
        textStyle = GfTextStyle.b3(fontWeight: FontWeight.bold),
        height = GfDouble.gf56;
}

class GfButtonSize {
  final double width;
  GfButtonSize(this.width);
  static final GfButtonSize mini = GfButtonSize(100);
  static final GfButtonSize medium = GfButtonSize(172);
  static final GfButtonSize full = GfButtonSize(340);
}

class GfButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final GfButtonScale scale;
  final GfButtonSize size;
  final _ButtonType _type;
  final void Function()? onTap;
  final bool responsive;
  final IconData? leading;
  final IconData? trailing;

  const GfButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.scale,
    required this.size,
    this.responsive = true,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.trailing,
  })  : _type = _ButtonType.filled,
        super(key: key);

  const GfButton.filled({
    Key? key,
    required this.onTap,
    required this.title,
    required this.scale,
    this.responsive = true,
    required this.size,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.trailing,
  })  : _type = _ButtonType.filled,
        super(key: key);

  const GfButton.outline({
    Key? key,
    required this.onTap,
    required this.title,
    this.disabled = false,
    this.responsive = true,
    required this.scale,
    required this.size,
    this.busy = false,
    this.leading,
    this.trailing,
  })  : _type = _ButtonType.outline,
        super(key: key);

  const GfButton.text({
    Key? key,
    required this.onTap,
    required this.title,
    this.disabled = false,
    required this.scale,
    this.responsive = true,
    required this.size,
    this.busy = false,
    this.leading,
    this.trailing,
  })  : _type = _ButtonType.text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _ButtonType.outline:
        Widget child = OutlinedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(scale.padding),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? gfPrimary6Color
                    : null;
              },
            ),
            side: MaterialStateProperty.all(
              BorderSide(
                  color: disabled ? gfGrey4Color : gfPrimary1Color,
                  width: 1.0,
                  style: BorderStyle.solid),
            ),
          ),
          onPressed: onTap,
          child: busy
              ? SizedBox(
                  width: scale.height.size * 0.3,
                  height: scale.height.size * 0.3,
                  child: CircularProgressIndicator(
                    color: disabled ? gfGrey4Color : gfPrimary1Color,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null)
                      Icon(
                        leading,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: disabled ? gfGrey4Color : scale.textStyle.color,
                      ),
                    if (leading != null)
                      SizedBox(
                        width: 2,
                      ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: scale.textStyle.fontSize,
                          fontWeight:
                              scale.textStyle.fontWeight ?? FontWeight.bold,
                          color: disabled ? gfGrey1Color : gfPrimary1Color),
                    ),
                    if (trailing != null)
                      SizedBox(
                        width: 2,
                      ),
                    if (trailing != null)
                      Icon(
                        trailing,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: disabled ? gfGrey4Color : scale.textStyle.color,
                      ),
                  ],
                ),
        );
        return responsive
            ? ResponsiveWidget(child: child)
            : SizedBox(
                child: child,
                width: size.width,
                height: scale.height.size,
              );
      case _ButtonType.text:
        Widget child = TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(scale.padding),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? gfPrimary6Color
                    : null;
              },
            ),
          ),
          onPressed: onTap,
          child: busy
              ? SizedBox(
                  width: scale.height.size * 0.3,
                  height: scale.height.size * 0.3,
                  child: CircularProgressIndicator(
                    color: disabled ? gfGrey4Color : gfPrimary1Color,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null)
                      Icon(
                        leading,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: disabled ? gfGrey4Color : scale.textStyle.color,
                      ),
                    if (leading != null)
                      SizedBox(
                        width: 2,
                      ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: scale.textStyle.fontSize,
                          fontWeight:
                              scale.textStyle.fontWeight ?? FontWeight.bold,
                          color: disabled ? gfGrey1Color : gfPrimary1Color),
                    ),
                    if (trailing != null)
                      SizedBox(
                        width: 2,
                      ),
                    if (trailing != null)
                      Icon(
                        trailing,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: disabled ? gfGrey4Color : scale.textStyle.color,
                      ),
                  ],
                ),
        );
        return responsive
            ? ResponsiveWidget(child: child)
            : SizedBox(
                width: size.width, height: scale.height.size, child: child);
      case _ButtonType.filled:
        Widget child = ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(scale.padding),
            overlayColor: MaterialStateProperty.all(
                disabled ? gfGrey4Color : gfPrimary3Color),
            backgroundColor: MaterialStateProperty.all(
                disabled ? gfGrey4Color : gfPrimary1Color),
          ),
          onPressed: onTap,
          child: busy
              ? SizedBox(
                  width: scale.height.size * 0.5,
                  height: scale.height.size * 0.5,
                  child: CircularProgressIndicator(
                    color: gfWhiteColor,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null)
                      Icon(
                        leading,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: scale.textStyle.color,
                      ),
                    if (leading != null)
                      SizedBox(
                        width: 2,
                      ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: scale.textStyle.fontSize,
                          fontWeight:
                              scale.textStyle.fontWeight ?? FontWeight.bold,
                          color: gfWhiteColor),
                    ),
                    if (trailing != null)
                      SizedBox(
                        width: 2,
                      ),
                    if (trailing != null)
                      Icon(
                        trailing,
                        size: scale.textStyle.fontSize! * 1.2,
                        color: gfWhiteColor,
                      ),
                  ],
                ),
        );
        return responsive
            ? ResponsiveWidget(child: child)
            : SizedBox(
                width: size.width, height: scale.height.size, child: child);
    }
  }
}

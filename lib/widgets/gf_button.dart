import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/styles.dart';

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
          horizontal: GfDouble.gf16(),
          vertical: GfDouble.gf8(),
        ),
        textStyle = GfTextStyle.b4(fontWeight: FontWeight.bold),
        height = GfDouble.gf32();
  GfButtonScale.medium()
      : padding = GfEdgeInsets.symmetric(
          horizontal: GfDouble.gf24(),
          vertical: GfDouble.gf12(),
        ),
        textStyle = GfTextStyle.b4(fontWeight: FontWeight.bold),
        height = GfDouble.gf40();
  GfButtonScale.large()
      : padding = GfEdgeInsets.symmetric(
          horizontal: GfDouble.gf32(),
          vertical: GfDouble.gf16(),
        ),
        textStyle = GfTextStyle.b4(fontWeight: FontWeight.bold),
        height = GfDouble.gf56();
}

class GfButtonSize {
  final double width;
  GfButtonSize(this.width);
  GfButtonSize.mini() : width = 100;
  GfButtonSize.medium() : width = 172;
  GfButtonSize.full() : width = 340;
}

class GfButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final GfButtonScale scale;
  final GfButtonSize size;
  final _ButtonType _type;
  final void Function()? onTap;
  final IconData? leading;
  final IconData? trailing;

  const GfButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.scale,
    required this.size,
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
        return SizedBox(
          width: size.width,
          height: scale.height.size,
          child: OutlinedButton(
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
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: gfPrimary1Color,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (leading != null)
                        Icon(
                          leading,
                          size: scale.textStyle.fontSize! * 1.5,
                          color: scale.textStyle.color,
                        ),
                      if (leading != null)
                        SizedBox(
                          width: 2,
                        ),
                      Text(
                        title,
                        style: GfTextStyle.b4(
                            fontWeight: FontWeight.bold,
                            color: disabled ? gfGrey1Color : gfPrimary1Color),
                      ),
                      if (trailing != null)
                        SizedBox(
                          width: 2,
                        ),
                      if (trailing != null)
                        Icon(
                          trailing,
                          size: scale.textStyle.fontSize! * 1.5,
                          color: scale.textStyle.color,
                        ),
                    ],
                  ),
          ),
        );
      case _ButtonType.text:
        return SizedBox(
          width: size.width,
          height: scale.height.size,
          child: TextButton(
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
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: gfPrimary1Color,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (leading != null)
                        Icon(
                          leading,
                          size: scale.textStyle.fontSize,
                          color: scale.textStyle.color,
                        ),
                      if (leading != null)
                        SizedBox(
                          width: 2,
                        ),
                      Text(
                        title,
                        style: GfTextStyle.b4(fontWeight: FontWeight.bold),
                      ),
                      if (trailing != null)
                        SizedBox(
                          width: 2,
                        ),
                      if (trailing != null)
                        Icon(
                          trailing,
                          size: scale.textStyle.fontSize! * 1.5,
                          color: scale.textStyle.color,
                        ),
                    ],
                  ),
          ),
        );
      case _ButtonType.filled:
        return SizedBox(
          width: size.width,
          height: scale.height.size,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(scale.padding),
              overlayColor: MaterialStateProperty.all(
                  disabled ? gfGrey4Color : gfPrimary3Color),
              backgroundColor: MaterialStateProperty.all(
                  disabled ? gfGrey4Color : gfPrimary1Color),
            ),
            onPressed: onTap,
            child: busy
                ? SizedBox(
                    width: 20,
                    height: 20,
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
                          size: scale.textStyle.fontSize,
                          color: scale.textStyle.color,
                        ),
                      if (leading != null)
                        SizedBox(
                          width: 2,
                        ),
                      Text(
                        title,
                        style: GfTextStyle.b4(
                            color: gfWhiteColor, fontWeight: FontWeight.bold),
                      ),
                      if (trailing != null)
                        SizedBox(
                          width: 2,
                        ),
                      if (trailing != null)
                        Icon(
                          trailing,
                          size: scale.textStyle.fontSize! * 1.5,
                          color: gfWhiteColor,
                        ),
                    ],
                  ),
          ),
        );
    }
  }
}

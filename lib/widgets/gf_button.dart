import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
// ignore_for_file: prefer_const_constructors

class GfButton extends StatelessWidget {
  final double? buttonHeight;
  final double? buttonWidth;
  final String title;
  final bool disabled;
  final bool isOutlineButton;
  final bool isTextButton;
  final bool busy;
  final void Function()? onTap;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsets padding;

  const GfButton({
    Key? key,
    required this.onTap,
    this.buttonHeight,
    this.isOutlineButton = false,
    this.isTextButton = false,
    this.buttonWidth,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.padding = const EdgeInsets.all(20),
    this.trailing,
  }) : super(key: key);

  const GfButton.outline({
    Key? key,
    required this.onTap,
    this.buttonHeight,
    this.isOutlineButton = true,
    this.isTextButton = false,
    this.buttonWidth,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.padding = const EdgeInsets.all(20),
    this.trailing,
  }) : super(key: key);

  const GfButton.text({
    Key? key,
    required this.onTap,
    this.buttonHeight,
    this.isOutlineButton = false,
    this.isTextButton = true,
    this.buttonWidth,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.padding = const EdgeInsets.all(20),
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: isOutlineButton
          ? OutlinedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(padding),
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) {
                    return states.contains(MaterialState.pressed)
                        ? gfPrimary6Color
                        : null;
                  },
                ),
                side: MaterialStateProperty.all(BorderSide(
                    color: gfPrimary1Color,
                    width: 1.0,
                    style: BorderStyle.solid)),
              ),
              onPressed: onTap,
              child: busy
                  ? Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: gfPrimary1Color,
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (leading != null) leading!,
                        if (leading != null)
                          SizedBox(
                            width: 2,
                          ),
                        Text(
                          title,
                          style: TextStyle(color: gfPrimary1Color),
                        ),
                        if (trailing != null)
                          SizedBox(
                            width: 2,
                          ),
                        if (trailing != null) trailing!,
                      ],
                    ))
          : isTextButton
              ? TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(padding),
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
                      ? Container(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: gfPrimary1Color,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (leading != null) leading!,
                            if (leading != null)
                              SizedBox(
                                width: 2,
                              ),
                            Text(
                              title,
                            ),
                            if (trailing != null)
                              SizedBox(
                                width: 2,
                              ),
                            if (trailing != null) trailing!,
                          ],
                        ))
              : ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(padding),
                    overlayColor: MaterialStateProperty.all(gfPrimary3Color),
                    backgroundColor: MaterialStateProperty.all(gfPrimary1Color),
                  ),
                  onPressed: onTap,
                  child: busy
                      ? Container(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: gfWhiteColor,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (leading != null) leading!,
                            if (leading != null)
                              SizedBox(
                                width: 2,
                              ),
                            Text(
                              title,
                            ),
                            if (trailing != null)
                              SizedBox(
                                width: 2,
                              ),
                            if (trailing != null) trailing!,
                          ],
                        )),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/app_size.dart';

class GfSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? labelText;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final bool autofocus;
  final double? width;
  final double? height;
  final String obscuringCharacter;
  final bool obscureText;
  final int? maxLines;
  final int? minLines;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;

  const GfSearchTextField.normal({
    Key? key,
    this.controller,
    this.keyboardType,
    this.labelText,
    this.focusNode,
    this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.width = 358,
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.prefixWidget,
    this.suffixWidget,
    this.onFieldSubmitted,
  })  : height = 44,
        super(key: key);

  const GfSearchTextField.large({
    Key? key,
    this.controller,
    this.keyboardType,
    this.labelText,
    this.focusNode,
    this.onFieldSubmitted,
    this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.width = 358,
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.prefixWidget,
    this.suffixWidget,
  })  : height = 56,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        focusNode: focusNode,
        key: key,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: prefixWidget == null
              ? null
              : SizedBox(height: 56, child: prefixWidget),
          suffixIcon: suffixWidget == null
              ? null
              : SizedBox(height: 56, child: suffixWidget),
          labelStyle: TextStyle(color: gfGrey1Color),
          label: Text(labelText ?? ""),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: gfPrimary1Color),
            borderRadius: BorderRadius.all(
              Radius.circular(GfDouble.gf4().size),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: gfGrey4Color),
            borderRadius: BorderRadius.all(
              Radius.circular(GfDouble.gf4().size),
            ),
          ),
        ),
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textAlign: textAlign,
        textDirection: textDirection,
      ),
    );
  }
}

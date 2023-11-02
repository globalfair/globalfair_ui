// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/app_size.dart';

class GfTextField extends StatefulWidget {
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
  final Color? errorColor;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;

  const GfTextField.normal({
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
    this.validator,
    this.errorColor,
    this.onFieldSubmitted,
  })  : height = 48,
        super(key: key);

  const GfTextField.large({
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
    this.validator,
    this.errorColor,
    this.suffixWidget,
  })  : height = 60,
        super(key: key);

  @override
  State<GfTextField> createState() => _GfTextFieldState();
}

class _GfTextFieldState extends State<GfTextField> {
  bool isValid = true;
  String? result;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height! * 1.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.width,
            height: widget.height,
            child: TextFormField(
              
              focusNode: widget.focusNode,
              key: widget.key,
              controller: widget.controller,
              onFieldSubmitted: widget.onFieldSubmitted,
              decoration: InputDecoration(
                helperText: " ",
                helperStyle: const TextStyle(fontSize: 0),
                errorStyle: const TextStyle(fontSize: 0),
                isDense: true,
                prefixIcon: widget.prefixWidget == null
                    ? null
                    : SizedBox(
                        height: widget.height! * 0.85,
                        child: widget.prefixWidget),
                suffixIcon: widget.suffixWidget == null
                    ? null
                    : SizedBox(
                        height: widget.height! * 0.85,
                        child: widget.suffixWidget),
                labelStyle: TextStyle(color: gfGrey1Color),
                label: Text(widget.labelText ?? ""),
                hintText: widget.hintText,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gfPrimary1Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4().size),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.errorColor ?? gfError1Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4().size),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.errorColor ?? gfError1Color),
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
              keyboardType: widget.keyboardType,
              textCapitalization: widget.textCapitalization,
              textAlign: widget.textAlign,
              validator: (a) {
                if (widget.validator != null) result = widget.validator!(a);
                setState(() {
                  if (result != null) isValid = false;
                });
                return result;
              },
              textDirection: widget.textDirection,
            ),
          ),
          if (!isValid)
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  result ?? "",
                  style: TextStyle(fontSize: 12, color: gfError1Color),
                )),
        ],
      ),
    );
  }
}

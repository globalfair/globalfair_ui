// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/app_size.dart';

enum TextFieldType {
  prefixsuffixIcons,
  prefixIconsuffixIconButton,
  withSmallsuffixButton,
  withLargesuffixButton,
}

class GfTextFieldScale {
  final double width;
  final double height;
  GfTextFieldScale.small()
      : width = 294,
        height = 44;
  GfTextFieldScale.normal()
      : width = 358,
        height = 48;
  GfTextFieldScale.large()
      : width = 358,
        height = 60;
}

class GfTextFieldInternal extends StatefulWidget {
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
  final GfTextFieldScale scale;
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

  const GfTextFieldInternal({
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
    required this.scale,
  }) : super(key: key);

  @override
  State<GfTextFieldInternal> createState() => _GfTextFieldInternalState();
}

class _GfTextFieldInternalState extends State<GfTextFieldInternal> {
  bool isValid = true;
  String? result;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.scale.width,
      height: widget.scale.height* 1.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.scale.width,
            height: widget.scale.height,
            child: TextFormField(
              focusNode: widget.focusNode,
              key: widget.key,
              controller: widget.controller,
              onFieldSubmitted: widget.onFieldSubmitted,
              style: TextStyle(height: 1.5),
              decoration: InputDecoration(
                helperText: " ",
                helperStyle: const TextStyle(fontSize: 0),
                errorStyle: const TextStyle(fontSize: 0),
                contentPadding: EdgeInsets.all(10),
                prefixIcon: widget.prefixWidget,
                suffixIcon: widget.suffixWidget,
                labelStyle: TextStyle(color: gfGrey1Color),
                label: Text(widget.labelText ?? ""),
                hintText: widget.hintText,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gfPrimary1Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4.size),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.errorColor ?? gfError1Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4.size),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.errorColor ?? gfError1Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4.size),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gfGrey4Color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(GfDouble.gf4.size),
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

class GfTextField extends StatelessWidget {
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
  final GfTextFieldScale scale;
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
  final Function()? suffixButtonOnPress;
  final String? suffixButtonLabel;
  final IconData? suffixButtonIcon;
  final TextFieldType type;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final IconButton? suffixIconButton;

  const GfTextField({
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
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.validator,
    this.errorColor,
    this.onFieldSubmitted,
    required this.scale,
    this.prefixIcon,
    this.suffixIcon,
  })  : type = TextFieldType.prefixsuffixIcons,
        prefixWidget = null,
        suffixWidget = null,
        suffixIconButton = null,
        suffixButtonOnPress = null,
        suffixButtonIcon = null,
        suffixButtonLabel = null,
        super(key: key);

  const GfTextField.prefixIconsuffixIconButton({
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
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.validator,
    this.errorColor,
    this.onFieldSubmitted,
    required this.scale,
    this.suffixIconButton,
    this.prefixIcon,
  })  : type = TextFieldType.prefixIconsuffixIconButton,
        prefixWidget = null,
        suffixWidget = null,
        suffixIcon = null,
        suffixButtonOnPress = null,
        suffixButtonIcon = null,
        suffixButtonLabel = null,
        super(key: key);

  const GfTextField.withLargesuffixButton({
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
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.prefixIcon,
    this.suffixWidget,
    this.validator,
    this.errorColor,
    this.onFieldSubmitted,
    this.suffixButtonOnPress,
    this.suffixButtonLabel,
    required this.scale,
  })  : type = TextFieldType.withLargesuffixButton,
        prefixWidget = null,
        suffixIconButton = null,
        suffixButtonIcon = null,
        suffixIcon = null,
        super(key: key);

  const GfTextField.withSmallsuffixButton({
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
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.prefixIcon,
    this.suffixWidget,
    this.validator,
    this.errorColor,
    this.onFieldSubmitted,
    this.suffixButtonOnPress,
    this.suffixButtonIcon,
    required this.scale,
  })  : type = TextFieldType.withSmallsuffixButton,
        prefixWidget = null,
        suffixButtonLabel = null,
        suffixIcon = null,
        suffixIconButton = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TextFieldType.prefixsuffixIcons:
        return GfTextFieldInternal(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          labelText: labelText,
          focusNode: focusNode,
          hintText: hintText,
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          autofocus: autofocus,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          maxLines: maxLines,
          minLines: minLines,
          prefixWidget: prefixIcon == null ? null : Icon(prefixIcon,size: 20,),
          suffixWidget: suffixIcon == null ? null : Icon(suffixIcon,size: 20,),
          validator: validator,
          errorColor: errorColor,
          onFieldSubmitted: onFieldSubmitted,
          scale: scale,
        );

      case TextFieldType.prefixIconsuffixIconButton:
        return GfTextFieldInternal(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          labelText: labelText,
          focusNode: focusNode,
          hintText: hintText,
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          autofocus: autofocus,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          maxLines: maxLines,
          minLines: minLines,
          prefixWidget: prefixIcon != null ? Icon(prefixIcon,size: 20,) : null,
          suffixWidget: suffixIconButton,
          validator: validator,
          errorColor: errorColor,
          onFieldSubmitted: onFieldSubmitted,
          scale: scale,
        );

      case TextFieldType.withSmallsuffixButton:
        return GfTextFieldInternal(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          labelText: labelText,
          focusNode: focusNode,
          hintText: hintText,
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          autofocus: autofocus,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          maxLines: maxLines,
          minLines: minLines,
          prefixWidget: Icon(prefixIcon,size: 20,),
          suffixWidget: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: scale.height,
            width: scale.width * 0.15,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: ElevatedButton(
                  onPressed: suffixButtonOnPress,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Icon(
                    suffixButtonIcon,
                    size: 20,
                  )),
            ),
          ),
          validator: validator,
          errorColor: errorColor,
          onFieldSubmitted: onFieldSubmitted,
          scale: scale,
        );

      case TextFieldType.withLargesuffixButton:
        return GfTextFieldInternal(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          labelText: labelText,
          focusNode: focusNode,
          hintText: hintText,
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          autofocus: autofocus,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          maxLines: maxLines,
          minLines: minLines,
          prefixWidget: Icon(prefixIcon,size: 20,),
          suffixWidget: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: scale.height,
            width: scale.width * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: ElevatedButton(
                onPressed: suffixButtonOnPress,
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  )),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Text(
                  suffixButtonLabel ?? "",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          validator: validator,
          errorColor: errorColor,
          onFieldSubmitted: onFieldSubmitted,
          scale: scale,
        );
    }
  }
}

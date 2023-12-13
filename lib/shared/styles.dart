import 'package:flutter/cupertino.dart';

// Text Styles

// To make it clear which weight we are using, we'll define the weight even for regular
// fonts
class GfTextStyle extends TextStyle {
  const GfTextStyle.h1({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 84,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.h2({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 64,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.h3({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 48,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.h4({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 40,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.h5({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 32,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.h6({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 24,
          fontWeight: fontWeight,
          color: color,
        );

  const GfTextStyle.b1({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 20,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.b2({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 18,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.b3({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 16,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.b4({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 14,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.b5({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 12,
          fontWeight: fontWeight,
          color: color,
        );
  const GfTextStyle.b6({
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) : super(
          fontSize: 10,
          fontWeight: fontWeight,
          color: color,
        );
}

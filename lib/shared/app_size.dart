import 'package:flutter/material.dart';

class GfDouble {
  final double size;
  const GfDouble.zero() : size = 0;
  const GfDouble.gf4() : size = 4;
  const GfDouble.gf8() : size = 8;
  const GfDouble.gf12() : size = 12;
  const GfDouble.gf16() : size = 16;
  const GfDouble.gf24() : size = 24;
  const GfDouble.gf32() : size = 32;
  const GfDouble.gf40() : size = 40;
  const GfDouble.gf48() : size = 48;
  const GfDouble.gf56() : size = 56;
  const GfDouble.gf64() : size = 64;
  const GfDouble.gf72() : size = 72;
  const GfDouble.gf80() : size = 80;
}

class GfEdgeInsets extends EdgeInsets {
  GfEdgeInsets.only({
    GfDouble left = const GfDouble.zero(),
    GfDouble right = const GfDouble.zero(),
    GfDouble top = const GfDouble.zero(),
    GfDouble bottom = const GfDouble.zero(),
  }) : super.only(
          left: left.size,
          right: right.size,
          top: top.size,
          bottom: bottom.size,
        );

  GfEdgeInsets.all(
    GfDouble value,
  ) : super.all(
          value.size,
        );

  GfEdgeInsets.fromLTRB(
    GfDouble left,
    GfDouble right,
    GfDouble top,
    GfDouble bottom,
  ) : super.fromLTRB(
          left.size,
          right.size,
          top.size,
          bottom.size,
        );

  GfEdgeInsets.symmetric({
    GfDouble horizontal = const GfDouble.zero(),
    GfDouble vertical = const GfDouble.zero(),
  }) : super.symmetric(
          horizontal: horizontal.size,
          vertical: vertical.size,
        );
}

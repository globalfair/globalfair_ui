import 'package:flutter/material.dart';

class GfDouble {
  final double size;
  const GfDouble({required this.size});
  static const GfDouble zero = GfDouble(size: 0);
  static const GfDouble gf4 = GfDouble(size: 4);
  static const GfDouble gf8 = GfDouble(size: 8);
  static const GfDouble gf12 = GfDouble(size: 12);
  static const GfDouble gf16 = GfDouble(size: 16);
  static const GfDouble gf24 = GfDouble(size: 24);
  static const GfDouble gf32 = GfDouble(size: 32);
  static const GfDouble gf40 = GfDouble(size: 40);
  static const GfDouble gf48 = GfDouble(size: 48);
  static const GfDouble gf56 = GfDouble(size: 56);
  static const GfDouble gf64 = GfDouble(size: 64);
  static const GfDouble gf72 = GfDouble(size: 72);
  static const GfDouble gf80 = GfDouble(size: 80);
}

class GfEdgeInsets extends EdgeInsets {
  GfEdgeInsets._only({
    GfDouble left = GfDouble.zero,
    GfDouble right = GfDouble.zero,
    GfDouble top = GfDouble.zero,
    GfDouble bottom = GfDouble.zero,
  }) : super.only(
          left: left.size,
          right: right.size,
          top: top.size,
          bottom: bottom.size,
        );
  factory GfEdgeInsets.only({
    final GfDouble left = GfDouble.zero,
    final GfDouble right = GfDouble.zero,
    final GfDouble top = GfDouble.zero,
    final GfDouble bottom = GfDouble.zero,
  }) {
    return GfEdgeInsets._only(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
    );
  }
  GfEdgeInsets._all(
    GfDouble value,
  ) : super.all(
          value.size,
        );

  factory GfEdgeInsets.all(final GfDouble value) {
    return GfEdgeInsets._all(value);
  }

  GfEdgeInsets._symmetric({
    final GfDouble horizontal = GfDouble.zero,
    GfDouble vertical = GfDouble.zero,
  }) : super.symmetric(
          horizontal: horizontal.size,
          vertical: vertical.size,
        );
  factory GfEdgeInsets.symmetric({
    final GfDouble horizontal = GfDouble.zero,
    GfDouble vertical = GfDouble.zero,
  }) {
    return GfEdgeInsets._symmetric(horizontal: horizontal, vertical: vertical);
  }
}

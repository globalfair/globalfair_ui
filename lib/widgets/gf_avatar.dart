import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/app_size.dart';

class GfAvatar extends StatelessWidget {
  final Widget? child;
  final Color dotColor;
  final bool withDot;
  final double? radius;
  GfAvatar.small({
    Key? key,
    this.child,
    this.dotColor = gfSuccess1Color,
    this.withDot = false,
  })  : radius = GfDouble.gf24.size,
        super(key: key);
  GfAvatar.medium({
    Key? key,
    this.child,
    this.dotColor = gfSuccess1Color,
    this.withDot = false,
  })  : radius = GfDouble.gf40.size,
        super(key: key);
  GfAvatar.large({
    Key? key,
    this.child,
    this.dotColor = gfSuccess1Color,
    this.withDot = false,
  })  : radius = GfDouble.gf56.size,
        super(key: key);
  GfAvatar.extraLarge({
    Key? key,
    this.child,
    this.dotColor = gfSuccess1Color,
    this.withDot = false,
  })  : radius = GfDouble.gf72.size,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          child:
              ClipRRect(borderRadius: BorderRadius.circular(100), child: child),
        ),
        withDot
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(radius! * 0.3),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(90.0),
                      color: dotColor),
                ),
              )
            : SizedBox()
      ],
    );
  }
}

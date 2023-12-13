import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';

class GfAnimatedCheck extends StatefulWidget {
  final double size;
  final Color? color;
  final IconData? icon;
  GfAnimatedCheck(
      {required this.size,
      this.color = gfSuccess1Color,
      this.icon = Icons.check});
  GfAnimatedCheck.error(
      {required this.size,
      this.color = gfError1Color,
      this.icon = Icons.refresh});

  @override
  _GfAnimatedCheckState createState() => _GfAnimatedCheckState();
}

class _GfAnimatedCheckState extends State<GfAnimatedCheck>
    with TickerProviderStateMixin {
  late AnimationController scaleController = AnimationController(
      duration: const Duration(milliseconds: 800), vsync: this);
  late Animation<double> scaleAnimation =
      CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(
      duration: const Duration(milliseconds: 400), vsync: this);
  late Animation<double> checkAnimation =
      CurvedAnimation(parent: checkController, curve: Curves.linear);

  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      }
    });
    scaleController.forward();
  }

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circleSize = widget.size;
    double iconSize = widget.size * 0.75;

    return ScaleTransition(
      scale: scaleAnimation,
      child: Container(
        height: circleSize,
        width: circleSize,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        ),
        child: SizeTransition(
            sizeFactor: checkAnimation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: Center(
                child: Icon(widget.icon, color: Colors.white, size: iconSize))),
      ),
    );
  }
}

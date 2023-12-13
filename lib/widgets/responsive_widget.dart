import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget child;
  final double? desktopWidth,tabletWidth;
  final bool shouldCenterContent;
  ResponsiveWidget({required this.child, this.desktopWidth, this.tabletWidth, this.shouldCenterContent = false});

  @override
  Widget build(BuildContext context) {
    double? width;
    switch(getDeviceType(MediaQuery.of(context).size)){
      case DeviceScreenType.desktop:
        width = desktopWidth ?? Adaptive.w(50);
        break;
      case DeviceScreenType.tablet:
        width = tabletWidth ?? Adaptive.w(75);
        break;
      default:
        width = null;

    }
    return shouldCenterContent ? Center(
      child: Container(
        width: width,
        child: child,
      ),
    ) : Container(
        width: width,
        child: child,
      );
  }
}

class ScreenSizeBuilder extends StatelessWidget {
  final Widget Function(bool) builder;
  ScreenSizeBuilder({required this.builder});
  @override
  Widget build(BuildContext context) {
    return builder(
        getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.mobile);
  }
}

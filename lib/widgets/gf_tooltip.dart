import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/app_size.dart';
import 'package:globalfair_ui/shared/styles.dart';

class GfTooltip extends StatelessWidget {
  final Widget? child;
  final String headingText;
  final String? subHeading;
  final String leftButtonText;
  final String rightButtonText;
  final Function()? leftButtonOnTap;
  final Function()? rightButtonOnTap;
  final bool withButton;

  GfTooltip({this.child, required this.headingText,required this.subHeading})
      : withButton = false,
        leftButtonText = "",
        rightButtonText = "",
        leftButtonOnTap = null,
        rightButtonOnTap = null;

  GfTooltip.withButton(
      {this.child,
      required this.headingText,
      required this.leftButtonText,
      required this.rightButtonText,
      this.leftButtonOnTap,
      this.rightButtonOnTap})
      : withButton = true,
        subHeading = null;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      decoration: BoxDecoration(color: gfBlack1Color),
      child: child,
      richMessage: TextSpan(children: [
        WidgetSpan(
            child: Padding(
          padding: GfEdgeInsets.all(GfDouble.gf12()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headingText,
                style: GfTextStyle.b5(
                    fontWeight: FontWeight.bold, color: gfWhiteColor),
              ),
              !withButton
                  ? Padding(
                padding: GfEdgeInsets.only(top:GfDouble.gf12()),
                    child: Text(subHeading ?? "",style: GfTextStyle.b5(color: gfWhiteColor),),
                  )
                  : Row(
                      children: [
                        GfButton.text(
                            onTap: leftButtonOnTap,
                            title: leftButtonText,
                            scale: GfButtonScale.small(),
                            size: GfButtonSize.mini()),
                        GfButton.filled(
                            onTap: rightButtonOnTap,
                            title: rightButtonText,
                            scale: GfButtonScale.small(),
                            size: GfButtonSize.mini())
                      ],
                    ),
            ],
          ),
        )),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/styles.dart';
import 'package:unicons/unicons.dart';

import '../shared/app_size.dart';

enum SnackBarConfig {
  rightNoButton,
  centerNoButton,
  center2Button,
  center1Button,
}

enum _SnackBarType { success, warning, error, information }

class GfSnackBar extends StatelessWidget {
  final String message;
  final SnackBarConfig configuration;
  final _SnackBarType _type;
  late IconData icon;
  final Function()? onCancelTap;
  final Function()? onBackTap;
  late String headingText;
  late Color color;
  GfSnackBar.success({
    Key? key,
    this.configuration = SnackBarConfig.rightNoButton,
    this.onCancelTap,
    this.onBackTap,
    required this.message,
  })  : _type = _SnackBarType.success,
        super(key: key) {
    icon = UniconsLine.check;
    headingText = "Success";
    color = gfSuccess1Color;
  }

  GfSnackBar.warning({
    Key? key,
    this.configuration = SnackBarConfig.rightNoButton,
    required this.message,
    this.onCancelTap,
    this.onBackTap,
  })  : _type = _SnackBarType.warning,
        super(key: key) {
    icon = UniconsLine.exclamation;
    headingText = "Warning";
    color = gfWarning1Color;
  }

  GfSnackBar.error({
    Key? key,
    this.configuration = SnackBarConfig.rightNoButton,
    required this.message,
    this.onCancelTap,
    this.onBackTap,
  })  : _type = _SnackBarType.error,
        super(key: key) {
    icon = UniconsLine.times;
    headingText = "Error";
    color = gfError1Color;
  }

  GfSnackBar.information({
    Key? key,
    this.configuration = SnackBarConfig.rightNoButton,
    required this.message,
    this.onCancelTap,
    this.onBackTap,
  })  : _type = _SnackBarType.information,
        super(key: key) {
    icon = UniconsLine.question;
    headingText = "Information";
    color = gfPrimary1Color;
  }

  @override
  Widget build(BuildContext context) {
    switch (configuration) {
      case SnackBarConfig.rightNoButton:
        return ClipRRect(
          borderRadius: BorderRadius.circular(GfDouble.gf4().size),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          color: color, width: GfDouble.gf8().size))),
              padding: GfEdgeInsets.all(GfDouble.gf8()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: GfEdgeInsets.only(right: GfDouble.gf12()),
                        child: Container(
                            padding: GfEdgeInsets.all(GfDouble.gf4()),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                            child: Icon(
                              icon,
                              color: gfWhiteColor,
                            )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            headingText,
                            style: const GfTextStyle.b4(
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(message,style: const TextStyle(color: gfBlack6Color),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GfIconButton(
                        onTap: onCancelTap,
                        icon: Icon(
                          UniconsLine.times,
                          color: gfGrey1Color,
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      case SnackBarConfig.centerNoButton:
        return Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(GfDouble.gf4().size),
                child: Card(
                  margin: EdgeInsets.all(GfDouble.gf12().size),
                  clipBehavior: Clip.hardEdge,
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: color, width: GfDouble.gf8().size),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         SizedBox(
                              height: GfDouble.gf12().size,
                            ),
                        Container(
                            padding: GfEdgeInsets.all(GfDouble.gf4()),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                            child: Icon(
                              icon,
                              color: gfWhiteColor,
                            )),
                        Column(
                          children: [
                             SizedBox(
                              height: GfDouble.gf12().size,
                            ),
                            Text(
                              headingText,
                              style: const GfTextStyle.b4(
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: GfDouble.gf8().size,
                            ),
                            Text(message,style: const TextStyle(color: gfBlack6Color),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: gfGrey1Color),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: onCancelTap,
                      child: Icon(
                        UniconsLine.times,
                        color: gfWhiteColor,
                      ),
                    ),
                  )),
            ),
          ],
        );

      case SnackBarConfig.center1Button:
        return ClipRRect(
          borderRadius: BorderRadius.circular(GfDouble.gf4().size),
          child: Card(
            margin: EdgeInsets.all(GfDouble.gf12().size),
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: color, width: GfDouble.gf8().size),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: GfEdgeInsets.all(GfDouble.gf4()),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                      child: Icon(
                        icon,
                        color: gfWhiteColor,
                      )),
                  Column(
                    children: [
                      Text(
                        headingText,
                        style:
                            const GfTextStyle.b4(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: GfDouble.gf8().size,
                      ),
                      Text(message,style: const TextStyle(color: gfBlack6Color),),
                        SizedBox(
                        height: GfDouble.gf8().size,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Text(
                          "Close",
                          style: TextStyle(color: gfGrey1Color),
                        ),
                        onTap: onCancelTap,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

      case SnackBarConfig.center2Button:
        return ClipRRect(
          borderRadius: BorderRadius.circular(GfDouble.gf4().size),
          child: Card(
            margin: EdgeInsets.all(GfDouble.gf12().size),
            clipBehavior: Clip.hardEdge,
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: color, width: GfDouble.gf8().size),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: GfEdgeInsets.all(GfDouble.gf4()),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                      child: Icon(
                        icon,
                        color: gfWhiteColor,
                      )),
                  Column(
                    children: [
                      SizedBox(
                        height: GfDouble.gf8().size,
                      ),
                      Text(
                        headingText,
                        style:
                            const GfTextStyle.b4(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: GfDouble.gf8().size,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:18,left:24,right:24),
                        child: Text("nckldalclanlcnlanclalnclnalcnlanlcnalcnlanclnalnclanlcnalncanclnalcnalnclanlcnalnclanlcnalnlnalcnalnl",textAlign: TextAlign.center,style: const TextStyle(color: gfBlack6Color,overflow: TextOverflow.ellipsis),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Container(
                              width: 100,
                              child: Text(
                                
                                "Close",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: gfGrey1Color),
                              ),
                            ),
                            onTap: onCancelTap,
                          ),
                        ),
                        SizedBox(width: 10,),
                        GfButton.outline(
                            onTap: onBackTap,
                            title: "Back",
                            scale: GfButtonScale.small(),
                            size: GfButtonSize.mini())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }
}

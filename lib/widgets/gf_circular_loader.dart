import 'package:flutter/material.dart';
import 'package:globalfair_ui/widgets/gf_animated_check_widget.dart';

import '../shared/app_colors.dart';

class GfCircularLoader extends StatelessWidget {
  final double loaderSize;
  bool isSuccess = false;
  final Function()? onErrorCallback;
  bool isError = false;

  GfCircularLoader({
    Key? key,
    this.onErrorCallback,
    this.loaderSize = 20,
  }) : super(key: key);

  GfCircularLoader.success({
    Key? key,
    this.isSuccess = true,
    this.onErrorCallback,
    this.loaderSize = 20,
  }) : super(key: key);

  GfCircularLoader.error({
    Key? key,
    this.isError = true,
    this.onErrorCallback,
    this.loaderSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: loaderSize,
      height: loaderSize,
      child: isSuccess
          ? GfAnimatedCheck(
              size: loaderSize,
            )
          : isError
              ? InkWell(
                  onTap: onErrorCallback,
                  child: GfAnimatedCheck.error(
                    size: loaderSize,
                  ),
                )
              : CircularProgressIndicator(
                  color: gfPrimary1Color,
                ),
    );
  }
}

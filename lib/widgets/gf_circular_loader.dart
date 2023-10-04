import 'package:flutter/material.dart';
import 'package:globalfair_ui/widgets/gf_animated_check_widget.dart';

import '../shared/app_colors.dart';

class GfCircularLoader extends StatelessWidget {
  final double loaderSize;
  final bool isSuccess;
  final Function()? onErrorCallback;
  final bool isError;

 const GfCircularLoader({
    Key? key,
    this.onErrorCallback,
    this.loaderSize = 20,
    this.isSuccess = false,
    this.isError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              : const CircularProgressIndicator(
                  color: gfPrimary1Color,
                ),
    );
  }
}

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_colors.dart';

class UploadButtonSize {
  final double width;
  final double height;
  UploadButtonSize(this.width, this.height);

  static final UploadButtonSize bigRectangle = UploadButtonSize(358, 163);
  static final UploadButtonSize smallRectangle = UploadButtonSize(246, 163);
  static final UploadButtonSize bigSquare = UploadButtonSize(358, 131);
  static final UploadButtonSize smallSquare = UploadButtonSize(246, 131);
}

class GfUploadButton extends StatelessWidget {
  final Function()? onPressed;
  final UploadButtonSize? size;
  GfUploadButton({
    Key? key,
    this.onPressed,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = 72;
    if (size == UploadButtonSize.smallRectangle ||
        size == UploadButtonSize.smallSquare) imageSize = 54;
    return InkWell(
      onTap: onPressed,
      child: DottedBorder(
        radius: const Radius.circular(12),
        color: onPressed == null ? gfBlack8Color : gfPrimary5Color,
        dashPattern: [6],
        strokeWidth: 2,
        borderType: BorderType.RRect,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(width: 2, color: Colors.transparent),
              ),
            ),
            minimumSize: MaterialStateProperty.all(
                Size(size?.width ?? 358, size?.height ?? 163)),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.hovered)) {
                return onPressed == null
                    ? Color.fromRGBO(243, 243, 243, 1)
                    : Color.fromRGBO(216, 238, 255, 0.5);
              }
              if (states.contains(MaterialState.selected)) {
                return onPressed == null
                    ? Color.fromRGBO(243, 243, 243, 1)
                    : Color.fromRGBO(216, 238, 255, 0.7);
              }
              return onPressed == null
                  ? Color.fromRGBO(243, 243, 243, 1)
                  : Color.fromRGBO(216, 238, 255, 0.2);
            }),
          ),
          onPressed: () {},
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  'images/upload_icon.png',
                  package: 'globalfair_ui',
                ),
                color: onPressed == null ? gfBlack7Color : null,
                fit: BoxFit.cover,
                height: imageSize,
                width: imageSize,
              ),
              Text(
                "Choose your files",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 2,),
              Text(
                "50 MB max file size",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: gfGrey1Color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

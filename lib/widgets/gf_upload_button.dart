import 'package:flutter/material.dart';

class GfUploadButton extends StatelessWidget {
  const GfUploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(
                "images/upload_icon.png"),
            fit: BoxFit.cover,
            height: 100,
            width: 150,
          ),
          Image.asset(
              '/Users/cepl/globalfair/globalfair_ui/images/upload_icon.png')
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GfTag extends StatelessWidget {
  final Color textColor;
  final String label;
  final Color backgroundColor;
  final Widget? surfix;
  final Widget? prefix;

  const GfTag({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfPrimary1Color,
        backgroundColor = gfPrimary4Color,
        super(key: key);

  const GfTag.blue({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfPrimary1Color,
        backgroundColor = gfPrimary4Color,
        super(key: key);

  const GfTag.red({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfError1Color,
        backgroundColor = gfError4Color,
        super(key: key);

  const GfTag.yellow({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfWarning1Color,
        backgroundColor = gfWarning4Color,
        super(key: key);

  const GfTag.green({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfSuccess1Color,
        backgroundColor = gfSuccess4Color,
        super(key: key);

  const GfTag.purple({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfPurple1Color,
        backgroundColor = gfPurple4Color,
        super(key: key);

  const GfTag.orange({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfOrange1Color,
        backgroundColor = gfOrange4Color,
        super(key: key);

  const GfTag.pink({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfPink1Color,
        backgroundColor = gfPink4Color,
        super(key: key);

  const GfTag.gey({Key? key, this.surfix, this.prefix, required this.label})
      : textColor = gfGrey1Color,
        backgroundColor = gfGrey4Color,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          prefix ?? SizedBox(),
          SizedBox(
            width: prefix == null ? 5 : 0,
          ),
          Text(
            label,
            style: TextStyle(color: textColor),
          ),
          SizedBox(
            width: surfix == null ? 5 : 0,
          ),
          surfix ?? SizedBox(),
        ],
      ),
    );
  }
}

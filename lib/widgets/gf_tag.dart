import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class GfTag extends StatelessWidget {
  final Color textColor;
  final String label;
  final Color backgroundColor;
  final IconData? suffix;
  final Function()? onSuffixTap;
  final Function()? onPrefixTap;
  final IconData? prefix;

  const GfTag(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPrimary1Color,
        backgroundColor = gfPrimary4Color,
        super(key: key);

  const GfTag.blue(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPrimary1Color,
        backgroundColor = gfPrimary4Color,
        super(key: key);

  const GfTag.red(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfError1Color,
        backgroundColor = gfError4Color,
        super(key: key);

  const GfTag.yellow(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfWarning1Color,
        backgroundColor = gfWarning4Color,
        super(key: key);

  const GfTag.green(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfSuccess1Color,
        backgroundColor = gfSuccess4Color,
        super(key: key);

  const GfTag.purple(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPurple1Color,
        backgroundColor = gfPurple4Color,
        super(key: key);

  const GfTag.orange(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfOrange1Color,
        backgroundColor = gfOrange4Color,
        super(key: key);

  const GfTag.pink(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPink1Color,
        backgroundColor = gfPink4Color,
        super(key: key);

  const GfTag.grey(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
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
          prefix == null
              ? SizedBox()
              : InkWell(
                  onTap: onPrefixTap,
                  child: Icon(
                    prefix,
                    color: textColor,
                  )),
          SizedBox(
            width: prefix == null ? 5 : 0,
          ),
          Text(
            label,
            style: TextStyle(color: textColor),
          ),
          SizedBox(
            width: suffix == null ? 5 : 0,
          ),
          suffix == null
              ? SizedBox()
              : InkWell(
                  onTap: onSuffixTap,
                  child: Icon(
                    suffix,
                    color: textColor,
                  ))
        ],
      ),
    );
  }
}

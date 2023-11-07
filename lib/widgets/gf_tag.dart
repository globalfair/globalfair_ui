import 'package:flutter/material.dart';
import 'package:globalfair_ui/shared/app_size.dart';

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
        backgroundColor = const Color(0xffEBF6FF),
        super(key: key);

  const GfTag.blue(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPrimary1Color,
        backgroundColor = const Color(0xffEBF6FF),
        super(key: key);

  const GfTag.red(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfError1Color,
        backgroundColor = const Color(0xffFFE1E2),
        super(key: key);

  const GfTag.yellow(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfWarning1Color,
        backgroundColor = const Color(0xffFFFCE9),
        super(key: key);

  const GfTag.green(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfSuccess1Color,
        backgroundColor = const Color(0xffE8FFDE),
        super(key: key);

  const GfTag.purple(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPurple1Color,
        backgroundColor = const Color(0xffF0E8FF),
        super(key: key);

  const GfTag.orange(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfOrange1Color,
        backgroundColor = const Color(0xffFFF1E4),
        super(key: key);

  const GfTag.pink(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfPink1Color,
        backgroundColor = const Color(0xffFFECFB),
        super(key: key);

  const GfTag.grey(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfGrey1Color,
        backgroundColor = gfGrey7Color,
        super(key: key);

  const GfTag.teal(
      {Key? key,
      this.suffix,
      this.prefix,
      required this.label,
      this.onPrefixTap,
      this.onSuffixTap})
      : textColor = gfTeal1Color,
        backgroundColor = const Color(0xffF1FEFC),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: backgroundColor,
      ),
      padding: GfEdgeInsets.symmetric(
          vertical: GfDouble.gf4, horizontal: GfDouble.gf16),
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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GfDropDown<T> extends StatelessWidget {
  final String dropdownValue;
  final List<String> dropdownOptions;
  final void Function(String?)? onTap;
  const GfDropDown(
      {Key? key,
      required this.dropdownValue,
      required this.dropdownOptions,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        items: dropdownOptions.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 30),
            ),
          );
        }).toList(),
        onChanged: onTap);
  }
}

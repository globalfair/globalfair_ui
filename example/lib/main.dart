import 'package:flutter/material.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
import 'package:globalfair_ui/shared/styles.dart';
import 'package:globalfair_ui/widgets/gf_avatar.dart';
import 'package:globalfair_ui/widgets/gf_button.dart';
import 'package:globalfair_ui/widgets/gf_checkbox.dart';
import 'package:globalfair_ui/widgets/gf_circular_loader.dart';
import 'package:globalfair_ui/widgets/gf_icon_button.dart';
import 'package:globalfair_ui/widgets/gf_radio_button.dart';
import 'package:globalfair_ui/widgets/gf_range_slider.dart';
import 'package:globalfair_ui/widgets/gf_slider.dart';
import 'package:globalfair_ui/widgets/gf_snackbar.dart';
import 'package:globalfair_ui/widgets/gf_switch.dart';
import 'package:globalfair_ui/widgets/gf_tag.dart';
import 'package:globalfair_ui/widgets/gf_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:unicons/unicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveSizer(
        builder: (_, __, ___) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Lato'),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int radioSelected = 0;
  double slider = 0;
  bool _checkboxVal = false;
  List<String> _values = [], selected = [];
  String dropdownValue = 'Dog';
  IconData dropdownIconValue = Icons.person;

  final TextEditingController _textEditingController = TextEditingController();
  ScrollController controller = ScrollController();

  RangeValues _currentRangeValues = const RangeValues(0, 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Outline buttons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      trailing: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      leading: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: true,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: false,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: true,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.medium(),
                      leading: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.large(),
                      leading: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.outline(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "filled buttons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      trailing: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      leading: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: true,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: false,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: true,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.medium(),
                      leading: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.large(),
                      leading: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.filled(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "text buttons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      trailing: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      leading: Icons.add,
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: false,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      disabled: true,
                      title: "Small",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: false,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini,
                      busy: true,
                      title: "Small",
                      disabled: true,
                      onTap: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.medium(),
                      leading: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: false,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.medium(),
                      trailing: Icons.add,
                      size: GfButtonSize.medium,
                      disabled: true,
                      title: "Medium",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.large(),
                      leading: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: false,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfButton.text(
                      scale: GfButtonScale.large(),
                      trailing: Icons.add,
                      size: GfButtonSize.full,
                      disabled: true,
                      title: "large",
                      busy: true,
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Icon buttons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton.outline(
                              icon: Icon(UniconsLine.bell),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton.outline(
                              icon: Icon(UniconsLine.bell),
                              onTap: null,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton.solid(
                              icon: Icon(UniconsLine.bell),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton.solid(
                              icon: Icon(UniconsLine.bell),
                              onTap: null,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton(
                              icon: Icon(UniconsLine.bell),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: GfIconButton(
                              icon: Icon(UniconsLine.bell),
                              onTap: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Checkbox and radio buttons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfCheckbox(
                            onTap: (a) {
                              setState(() {
                                _checkboxVal = a!;
                              });
                            },
                            value: _checkboxVal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfCheckbox(
                            onTap: null,
                            value: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfCheckbox(
                            onTap: null,
                            value: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfRadioButton<int>(
                            value: 1,
                            selectedOption: radioSelected,
                            onTap: (a) {
                              setState(() {
                                radioSelected = a!;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfRadioButton<int>(
                            value: 2,
                            selectedOption: radioSelected,
                            onTap: (a) {
                              setState(() {
                                radioSelected = a!;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfRadioButton<bool>(
                            value: true,
                            selectedOption: true,
                            onTap: null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfRadioButton<bool>(
                            value: false,
                            selectedOption: true,
                            onTap: null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfSwitch(
                            value: false,
                            onTap: (a) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfSwitch(
                            value: true,
                            onTap: (a) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfSwitch(
                            value: false,
                            onTap: null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfSwitch(
                            value: true,
                            onTap: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sliders",
                      style: GfTextStyle.b4(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      height: 48,
                      child: GfSlider(
                        value: 20,
                        isDisabled: true,
                        onTap: (a) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      height: 48,
                      child: GfSlider(
                        value: slider,
                        divisions: 100,
                        onTap: (a) {
                          setState(() {
                            slider = a;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: GfRangeSlider(
                        values: _currentRangeValues,
                        max: 100,
                        // divisions: 10,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onTap: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: GfRangeSlider(
                          values: const RangeValues(0, 60),
                          max: 100,
                          divisions: 100,
                          isDisabled: true,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onTap: (a) {}),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with nothing (validation in these , if required will put in all but look will be the same )",
                      textAlign: TextAlign.center,
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GfTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      scale: GfTextFieldScale.small(),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      scale: GfTextFieldScale.normal(),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      scale: GfTextFieldScale.large(),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with prefix icon",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.small(),
                      prefixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.normal(),
                      prefixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.large(),
                      prefixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with suffix icon",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.small(),
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.normal(),
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.large(),
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with prefix and suffix icons",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.small(),
                      prefixIcon: UniconsLine.camera,
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.normal(),
                      prefixIcon: UniconsLine.camera,
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField(
                      scale: GfTextFieldScale.large(),
                      prefixIcon: UniconsLine.camera,
                      suffixIcon: UniconsLine.camera,
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with suffix button",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      scale: GfTextFieldScale.small(),
                      suffixIconButton: IconButton(
                        icon: Icon(
                          UniconsLine.camera,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      scale: GfTextFieldScale.normal(),
                      suffixIconButton: IconButton(
                        icon: Icon(
                          UniconsLine.camera,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      scale: GfTextFieldScale.large(),
                      suffixIconButton: IconButton(
                        icon: Icon(
                          UniconsLine.camera,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with prefix icon and suffix button",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      scale: GfTextFieldScale.small(),
                      prefixIcon: UniconsLine.user,
                      suffixIconButton: IconButton(
                        splashRadius: 2,
                        icon: Icon(UniconsLine.camera),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      prefixIcon: UniconsLine.camera,
                      scale: GfTextFieldScale.normal(),
                      suffixIconButton: IconButton(
                        icon: Icon(UniconsLine.camera),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.prefixIconsuffixIconButton(
                      scale: GfTextFieldScale.large(),
                      prefixIcon: UniconsLine.camera,
                      suffixIconButton: IconButton(
                        icon: Icon(UniconsLine.camera),
                        onPressed: () {},
                      ),
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with large suffix button",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withLargesuffixButton(
                      scale: GfTextFieldScale.small(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonLabel: "Submit",
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withLargesuffixButton(
                      scale: GfTextFieldScale.normal(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonLabel: "Submit",
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withLargesuffixButton(
                      scale: GfTextFieldScale.large(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonLabel: "Submit",
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TextField with small suffix button",
                      style: GfTextStyle.b1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withSmallsuffixButton(
                      scale: GfTextFieldScale.small(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonIcon: UniconsLine.search_alt,
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withSmallsuffixButton(
                      scale: GfTextFieldScale.normal(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonIcon: UniconsLine.search_alt,
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTextField.withSmallsuffixButton(
                      scale: GfTextFieldScale.large(),
                      prefixIcon: UniconsLine.user,
                      suffixButtonIcon: UniconsLine.search_alt,
                      suffixButtonOnPress: () {},
                      hintText: "Put text",
                      labelText: "label",
                    ),
                  ),
                  Text(
                    "Loaders and tags",
                    style: GfTextStyle.b1(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          loaderSize: 80,
                          onErrorCallback: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          isError: true,
                          loaderSize: 80,
                          onErrorCallback: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          isSuccess: true,
                          loaderSize: 80,
                          onErrorCallback: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          loaderSize: 40,
                          onErrorCallback: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          isError: true,
                          loaderSize: 40,
                          onErrorCallback: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GfCircularLoader(
                          isSuccess: true,
                          loaderSize: 40,
                          onErrorCallback: () {},
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.blue(
                            label: "tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.pink(
                            label: " tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.red(
                            label: " tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.grey(
                            label: " tag",
                            onSuffixTap: () {},
                            suffix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.orange(
                            label: " tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.purple(
                            label: " tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfTag.green(
                            label: " tag",
                            onSuffixTap: () {},
                            prefix: UniconsLine.times,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Text(
                    "Snackbar",
                    style: GfTextStyle.b1(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.success(
                        message: "add your message here",
                        configuration: SnackBarConfig.center2Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.error(
                        message: "add your message here",
                        configuration: SnackBarConfig.center2Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.information(
                        message: "add your message here",
                        configuration: SnackBarConfig.center2Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.warning(
                        message: "add your message here",
                        configuration: SnackBarConfig.center2Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 100,
                      child: GfSnackBar.error(
                        message: "add your message here",
                        configuration: SnackBarConfig.rightNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 100,
                      child: GfSnackBar.success(
                        message: "add your message here",
                        configuration: SnackBarConfig.rightNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 100,
                      child: GfSnackBar.information(
                        message: "add your message here",
                        configuration: SnackBarConfig.rightNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 100,
                      child: GfSnackBar.warning(
                        message: "add your message here",
                        configuration: SnackBarConfig.rightNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.warning(
                        message: "add your message here",
                        configuration: SnackBarConfig.center1Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.success(
                        message: "add your message here",
                        configuration: SnackBarConfig.center1Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.information(
                        message: "add your message here",
                        configuration: SnackBarConfig.center1Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.error(
                        message: "add your message here",
                        configuration: SnackBarConfig.center1Button,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.information(
                        message: "add your message here",
                        configuration: SnackBarConfig.centerNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.success(
                        message: "add your message here",
                        configuration: SnackBarConfig.centerNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.error(
                        message: "add your message here",
                        configuration: SnackBarConfig.centerNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: GfSnackBar.warning(
                        message: "add your message here",
                        configuration: SnackBarConfig.centerNoButton,
                        onCancelTap: () {},
                        onBackTap: () {},
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    "Avatar",
                    style: GfTextStyle.b1(),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfAvatar.small(
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfAvatar.medium(
                            child: Container(
                              color: Colors.red,
                            ),
                            withDot: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GfAvatar.large(
                            withDot: true,
                          ),
                        ),
                    ],
                    ),
                  ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Upload button",
                            style: GfTextStyle.b1(),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed:()=>print("aaa"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: null,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: null,
                                  size: UploadButtonSize.bigSquare,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: () {},
                                  size: UploadButtonSize.bigSquare,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: null,
                                  size: UploadButtonSize.smallRectangle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: () {},
                                  size: UploadButtonSize.smallRectangle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: null,
                                  size: UploadButtonSize.smallSquare,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GfUploadButton(
                                  onPressed: () {},
                                  size: UploadButtonSize.smallSquare,
                                ),
                              ),
                            ],
                          ),
                        ),
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

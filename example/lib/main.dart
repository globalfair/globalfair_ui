import 'package:flutter/material.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
import 'package:globalfair_ui/shared/app_colors.dart';
import 'package:globalfair_ui/shared/styles.dart';
import 'package:globalfair_ui/widgets/gf_textfield.dart';
import 'package:unicons/unicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Lato'),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
                    disabled: false,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.outline(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
                    disabled: true,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.outline(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
                    disabled: false,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.filled(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
                    disabled: true,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.filled(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
                    disabled: false,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.text(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
                    disabled: true,
                    title: "Small",
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfButton.text(
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.mini(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.medium(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                    size: GfButtonSize.full(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: GfIconButton.outline(
                          icon: Icon(Icons.add),
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
                          icon: Icon(Icons.add),
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
                          icon: Icon(Icons.add),
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
                          icon: Icon(Icons.add),
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
                          icon: Icon(Icons.add),
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
                          icon: Icon(Icons.add),
                          onTap: null,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Checkbox and radio buttons",
                    style: GfTextStyle.b1(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfCheckbox(
                        onTap: (a) {},
                        value: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfCheckbox(
                        onTap: (a) {},
                        value: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfRadioButton<bool>(
                        value: false,
                        selectedOption: true,
                        onTap: (a) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfRadioButton<bool>(
                        value: true,
                        selectedOption: true,
                        onTap: (a) {},
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
                      divisions: 10,
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
                        divisions: 10,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onTap: null),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.person),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    suffixWidget: Icon(Icons.person),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: Icon(UniconsLine.times),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.email),
                    suffixWidget: GfButton.filled(
                      onTap: () {},
                      title: "Submit",
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini(),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: GfButton.filled(
                      trailing: Icons.search,
                      onTap: () {},
                      title: "",
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini(),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 20)),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 20)),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 20)),
                          value: dropdownIconValue,
                          onChanged: (IconData? newValue) {
                            setState(() {
                              dropdownIconValue = newValue!;
                            });
                          },
                          items: <IconData>[
                            Icons.person,
                            Icons.home,
                            Icons.ac_unit_rounded
                          ].map<DropdownMenuItem<IconData>>((IconData value) {
                            return DropdownMenuItem<IconData>(
                              value: value,
                              child: Icon(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.large(
                    prefixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            left: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 20)),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.person),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    suffixWidget: Icon(Icons.person),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: Icon(UniconsLine.times),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.email),
                    suffixWidget: GfButton.filled(
                      onTap: () {},
                      title: "Submit",
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini(),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: GfButton.filled(
                      trailing: Icons.search,
                      onTap: () {},
                      title: "",
                      scale: GfButtonScale.small(),
                      size: GfButtonSize.mini(),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Icon(Icons.person),
                    suffixWidget: SizedBox(
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 2.0, color: gfGrey6Color),
                            top: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            right: BorderSide(
                                width: 1.0, color: Colors.transparent),
                            bottom: BorderSide(
                                width: 1.0, color: Colors.transparent),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownIconValue,
                            onChanged: (IconData? newValue) {
                              setState(() {
                                dropdownIconValue = newValue!;
                              });
                            },
                            items: <IconData>[
                              Icons.person,
                              Icons.home,
                              Icons.ac_unit_rounded
                            ].map<DropdownMenuItem<IconData>>((IconData value) {
                              return DropdownMenuItem<IconData>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GfTextField.normal(
                    validator: (String? value) {
                      if (value != null &&
                          !(value.length > 5) &&
                          value.isNotEmpty) {
                        return "Password should contain more than 5 characters";
                      }
                      return null;
                    },
                    prefixWidget: Container(
                      width: 100,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 2.0, color: gfGrey6Color),
                          top:
                              BorderSide(width: 1.0, color: Colors.transparent),
                          left:
                              BorderSide(width: 1.0, color: Colors.transparent),
                          bottom:
                              BorderSide(width: 1.0, color: Colors.transparent),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  value,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    hintText: "Put text",
                    labelText: "label",
                  ),
                ),
                Divider(),
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
                Row(
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
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfTag.green(
                        label: " tag",
                        onSuffixTap: () {},
                        prefix: UniconsLine.times,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Text("Snackbar",style: GfTextStyle.b1(),),
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
                Text("Avatar",style: GfTextStyle.b1(),),
                Row(
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GfAvatar.extraLarge(
                        child: Image.network('https://via.placeholder.com/150'),
                        withDot: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

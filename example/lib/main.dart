import 'package:flutter/material.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
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
      theme: ThemeData(
        fontFamily: 'Lato'
      ),
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
  RangeValues _currentRangeValues = const RangeValues(0, 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GfButton.outline(
                  scale: GfButtonScale.large(),
                  trailing: Icons.add,
                  size: GfButtonSize.medium(),
                  disabled: false,
                  title: "small",

                  onTap: (){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GfButton.outline(
                  scale: GfButtonScale.large(),
                  size: GfButtonSize.mini(),
                  title: "large",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GfButton.outline(
                  scale: GfButtonScale.large(),
                  size: GfButtonSize.full(),
                  title: "large",
                  disabled: true,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GfTooltip(
                  headingText: "Loading button ",
                  subHeading: "this is what loading button looks like ",
                  child: GfButton.outline(
                    scale: GfButtonScale.medium(),
                    size: GfButtonSize.medium(),
                    title: "large",
                    busy: true,
                    disabled: true,
                    onTap: () {},
                  ),
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
                      child: GfIconButton.outline(
                        icon: Icon(Icons.add),
                        onTap: null,
                      ),
                    ),
                  ),
                ],
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
                    child: GfRadioButton<bool>(
                      value: false,
                      selectedOption: true,
                      onTap: (a){},
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
                    divisions: 5,
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
                child: GfTextField.normal(
                  prefixWidget: Icon(Icons.add),
                  hintText: "Put text",
                  labelText: "label",
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
                child: GfTextField.normal(
                  suffixWidget: Icon(Icons.add),
                  hintText: "Put text",
                  labelText: "label",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GfTextField.large(
                  suffixWidget: GfButton.filled(
                    trailing: Icons.arrow_forward,
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
                    trailing: Icons.arrow_forward,
                    onTap: () {},
                    title: "Submit button",
                    scale: GfButtonScale.small(),
                    size: GfButtonSize.medium(),
                  ),
                  hintText: "Put text",
                  labelText: "label",
                ),
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
                      label: "blue tag",
                      onSuffixTap: () {},
                      prefix: UniconsLine.times,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTag.pink(
                      label: "pink tag",
                      onSuffixTap: () {},
                      prefix: UniconsLine.times,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTag.red(
                      label: "red tag",
                      onSuffixTap: () {},
                      prefix: UniconsLine.times,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfTag.gey(
                      label: "grey tag",
                      onSuffixTap: () {},
                      suffix: UniconsLine.times,
                    ),
                  ),
                ],
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
                  child: GfSnackBar.information(
                    message: "add your message here",
                    configuration: SnackBarConfig.centerNoButton,
                    onCancelTap: () {},
                    onBackTap: () {},
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GfAvatar.small(
                      child: Container(
                        color: Colors.red,
                      ),
                      withDot: true,
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
    );
  }
}

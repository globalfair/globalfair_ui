import 'package:flutter/material.dart';
import 'package:globalfair_ui/globalfair_ui.dart';
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
      theme: ThemeData(),
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
  double _counter = 0;
  int radioSelected = 0;
  bool _checkboxVal = false;
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 48,
                child: GfButton(
                  busy: true,
                  title: "ButtonText",
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: GfIconButton.outline(
                  icon: Icon(Icons.add),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: GfIconButton.solid(
                  icon: Icon(Icons.add),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: GfIconButton(
                  icon: Icon(Icons.add),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 48,
                child: GfButton.outline(
                  trailing: Icon(Icons.add),
                  title: "ButtonText",
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 48,
                child: GfButton.text(
                  trailing: Icon(Icons.add),
                  title: "ButtonText",
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 140,
                height: 48,
                child: GfButton.outline(
                  trailing: Icon(Icons.add),
                  title: "ButtonText",
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 48,
                child: GfSlider(
                  label: _counter.toInt().toString(),
                  value: _counter,
                  divisions: 100,
                  onTap: (a) {
                    setState(() {
                      _counter = a;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 48,
                child: GfSlider(
                  value: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GfCheckbox(
                onTap: (val) {
                  setState(() {
                    _checkboxVal = val!;
                  });
                },
                value: _checkboxVal,
              ),
              SizedBox(
                height: 20,
              ),
              GfRadioButton<int>(
                value: 2,
                selectedOption: radioSelected,
                onTap: (a) {
                  setState(() {
                    radioSelected = a!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              GfSwitch(value: true, onTap: null),
              SizedBox(
                height: 20,
              ),
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              GfCircularLoader(
                loaderSize: 80,
                onErrorCallback: () {},
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              GfCircularLoader.error(
                loaderSize: 80,
                onErrorCallback: () {},
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              GfCircularLoader.success(
                loaderSize: 80,
                onErrorCallback: () {},
              ),
              SizedBox(
                height: 20,
              ),
              GfTag(label: "Tag",),
              SizedBox(
                height: 20,
              ),
              GfTag.pink(label: "Pink tag",
                  surfix: 
                 Icon(UniconsLine.times),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

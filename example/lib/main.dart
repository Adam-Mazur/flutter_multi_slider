import 'package:flutter/material.dart';
import 'package:flutter_multi_slider/multi_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<double> values1 = [1];
  List<double> values2 = [1, 2];
  List<double> values3 = [1, 2, 3];
  List<double> values4 = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tests'),
      ),
      body: Column(
        children: <Widget>[
          MultiSlider(
            values: values1,
            min: 0,
            max: 5,
            onChanged: (values) => setState(() => values1 = values),
          ),
          MultiSlider(
            values: values2,
            min: 0,
            max: 5,
            onChanged: (values) => setState(() => values2 = values),
          ),
          MultiSlider(
            values: values3,
            min: 0,
            max: 5,
            onChanged: (values) => setState(() => values3 = values),
          ),
          MultiSlider(
            values: values4,
            min: 0,
            max: 5,
            onChanged: (values) => setState(() => values4 = values),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
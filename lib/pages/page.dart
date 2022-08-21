// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:midterm_620710376/convert.dart';


class CalPage extends StatefulWidget {
  const CalPage({Key? key}) : super(key: key);

  @override
  State<CalPage> createState() => _PageState();
}

class _PageState extends State<CalPage> {
  final _controller = TextEditingController();
  final convert1 = CeltoFah();
  final convert2 = FahtoCel();
  final convert3 = KeltoCel();
  final convert4 = CeltoKel();
  final convert5 = FahtoKel();
  final convert6 = KeltoFah();

  // state variable
  var _feedbackText = '';

  void handleClick_CeltoFah() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert1.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Celsius = $result Fahrenheit';
      });
    }
  }

  void handleClick_FahtoCel() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert2.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Fahrenheit = $result Celsius';
      });
    }
  }

  void handleClick_KeltoCel() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert3.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Kelvin = $result Celsius';
      });
    }
  }

  void handleClick_CeltoKel() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert4.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Celsius = $result Kelvin';
      });
    }
  }

  void handleClick_FahtoKel() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert5.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Fahrenheit = $result Kelvin';
      });
    }
  }

  void handleClick_KeltoFah() {
    //print('Button clicked!');
    print(_controller.text);
    var convert = double.tryParse(_controller.text);
    if (convert == null) {

      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = convert6.doConvert(convert);
      setState(() {
        _feedbackText = '$convert Kelvin = $result Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            SizedBox(height: 100.0),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            // Callback function
            SizedBox(height: 10.0),

            ElevatedButton(
              onPressed: handleClick_CeltoFah,
              child: const Text('Celsius to Fahrenheit'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: handleClick_FahtoCel,
              child: const Text('Fahrenheit to Celsius'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: handleClick_KeltoCel,
              child: const Text('Kelvin to Celsius'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: handleClick_CeltoKel,
              child: const Text('Celsius to Kelvin'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: handleClick_FahtoKel,
              child: const Text('Fahrenheit to Kelvin'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: handleClick_KeltoFah,
              child: const Text('Kelvin to Fahrenheit'),
            ),
            SizedBox(height: 50.0),
            Text(_feedbackText),

          ],
        ),
      ),
    );
  }
}
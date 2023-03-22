import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          colorScheme: _colorScheme,
        ),
        home: InputPage());
  }
}

const ColorScheme _colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0A0E21),
    onPrimary: Colors.white,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    error: Color(0xffcf6679),
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Color(0xff121212),
    onSurface: Colors.white);

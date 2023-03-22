import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25.0) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String message() {
    if (_bmi >= 25.0) {
      return 'Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Good Job !';
    } else {
      return 'You need to eat more.';
    }
  }
}

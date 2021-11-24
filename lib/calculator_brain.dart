import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI()
  {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_bmi >= 25){
      return 'KEGEMUKAN';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'KEKURUSAN';
    }
  }

  String getInterpretation()
  {
    if(_bmi >= 25){
      return "Anda memiliki berat badan melebihi batas ideal. Cobalah berolahraga lebih banyak!";
    } else if (_bmi > 18.5) {
      return "Anda memiliki berat badan ideal. Pertahankan terus!";
    } else {
      return "Anda memiliki berat badan dibawah batas ideal. Cobalah makan yang banyak dan bergizi!";
    }
  }
}
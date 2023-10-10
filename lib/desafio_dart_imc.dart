import 'dart:math';

String calculateIMC(double peso, double altura) {
  double imc = 0.0;

  imc = peso / pow(altura, 2);
  return imc.toStringAsFixed(1);
}

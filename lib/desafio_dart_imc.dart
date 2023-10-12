import 'dart:math';
import 'package:desafio_dart_imc/class/person.dart';
import 'package:desafio_dart_imc/indice.dart';
import 'package:desafio_dart_imc/utils/person_exception.dart';

import 'utils/input.dart';

void personalData() {
  String nome = ConsoleUtils.inputWithText("Digite o nome do paciente:");
  if (nome.trim() == "") {
    print("Caractéres invalidos!");
    throw MyExceptionError();
  }
  double? peso =
      ConsoleUtils.inputWithNumberVerification("Informe o peso, em Kg:");
  double? altura =
      ConsoleUtils.inputWithNumberVerification("Informe a altura, em metros:");

  Person pessoa = Person(nome, peso, altura);
  var imc = calculateIMC(peso, altura);
  var resultado = ComparacaoIMC.comparacao(imc);
  print(
      "O paciente ${pessoa.getName()}, apresenta IMC= $imc, encontrando-se com índice $resultado.");
}

String calculateIMC(double peso, double altura) {
  double imc = 0.0;

  imc = peso / pow(altura, 2);
  return imc.toStringAsFixed(1);
}

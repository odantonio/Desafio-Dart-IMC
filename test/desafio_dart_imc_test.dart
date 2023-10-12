import 'package:desafio_dart_imc/desafio_dart_imc.dart';
import 'package:desafio_dart_imc/indice.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculateIMC(102, 1.8), equals("31.5"));
  });

  test('comparação', () {
    expect(ComparacaoIMC.comparacao("15"), equals("magreza extrema"));
  });

  test('comparação', () {
    expect(ComparacaoIMC.comparacao("18.9"), equals("saudável"));
  });
}

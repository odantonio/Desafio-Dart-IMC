import 'package:desafio_dart_imc/desafio_dart_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculateIMC(102, 1.8), equals("31.5"));
  });
}

/// Este arquivo contém várias funções para leitura do input via console.
///
/// Implementações:
///
/// __Método Estático:__ o qual não é necessário instanciar, podemos acessar diretamente.
/// __Try-Catch__: para tratar possíveis erros, ao invés de usar *.tryParse.*

import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  /// Função usada para ler o input do console.
  /// A função apenas verifica por null.
  /// Ela não recebe paramêtro:
  static String inputText() {
    var line = stdin.readLineSync(encoding: utf8) ?? "";
    return line;
  }

  /// Imprime na tela um texto e verifica por null.
  /// Ela recebe apenas um paramêtro:
  ///  ```message é o parâmetro da mensagem que deve estar no print
  /// ```
  static String inputWithText(String message) {
    print(message);
    return inputText();
  }

  /// Faz a conversão do tipo string para double.
  /// A função apenas verifica por null.
  /// Ela não recebe paramêtro:
  static double inputNumber() {
    var value = inputText();
    try {
      return double.parse(value);
    } catch (e) {
      return 0;
    }
  }

  /// Faz a conversão do tipo string para double.
  /// A função imprime na tela um texto e verifica por null, usando a _inputNumber_
  /// Ela recebe apenas um paramêtro:
  /// ```message é o parâmetro da mensagem que deve estar no print
  /// ```
  static double? inputNumberWithText(String message) {
    print(message);
    return inputNumber();
  }

  /// Faz a verificação de valores não desejados.
  /// A função converte strings para valores double, e descarta entradas indesejados não numericas.
  /// Ela recebe dois paramêtros:
  /// ```message é o parâmetro da mensagem que deve estar no print
  /// validation é a string que encerra a execução do código, definida em código ao chamar esta função.
  /// ```
  static double? inputWithNumberValidation(String message, String validation) {
    do {
      try {
        var line = inputWithText(message);
        if (line == validation) {
          return null;
        }
        return double.parse(line);
      } catch (e) {
        print(message);
      }
    } while (true);
  }

  /// Faz a verificação de valores não desejados.
  /// A função converte strings para valores double, e descarta entradas indesejados não numericas e se a entrada for nula, descarta e espera por uma entrada numérica.
  /// Ela recebe um paramêtros:
  /// ```message é o parâmetro da mensagem que deve estar no print
  /// ```
  static double inputWithNumberVerification(String message) {
    do {
      try {
        var line = inputWithText(message);
        if (line == "") {
          return inputWithNumberVerification(
              "Número invalido, digite novamente:");
        }
        return double.parse(line);
      } catch (e) {
        print(message);
      }
    } while (true);
  }
}

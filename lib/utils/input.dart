import 'dart:convert';
import 'dart:io';

/* 
    Método Estático: não é necessário instanciar, podemos acessar diretamente.
    
    Implementando recuso Try-Catch para tratar possiveis erros, ao invés de usar .tryParse.
    Também implementando funções recursivas.   
  */

class ConsoleUtils {
/* 
  A função abaixo pode ser usada para ler o input do console. A função apenas verifica por null.
  Ela não recebe paramêtro: 
*/
  static String inputText() {
    var line = stdin.readLineSync(encoding: utf8);
    return line ?? "";
  }

/* 
  A função abaixo pode ser usada para ler o input do console. A função imprime na tela um texto e verifica por null. 
  Ela recebe apenas um paramêtro: 
    --> message é o parâmetro da mensagem que deve estar no print
*/
  static String inputWithText(String message) {
    print(message);
    return inputText();
  }

/* 
  A função abaixo pode ser usada para ler o input do console e fazer a conversão do tipo string para double. A função apenas verifica por null.
  Ela não recebe paramêtro: 
*/
  static double? inputNumber() {
    var value = inputText();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

/* 
  A função abaixo pode ser usada para ler o input do console e fazer a conversão do tipo string para double. A função imprime na tela um texto e verifica por null. 
  Ela recebe apenas um paramêtro: 
    --> message é o parâmetro da mensagem que deve estar no print
*/

  static double? inputNumberWithText(String message) {
    print(message);
    return inputNumber();
  }

/* 
  A função abaixo pode ser usada para ler o input do console e fazer a verificação de valores não desejados. Neste caso, a função deve ser usada para converter strings para valores numéricos, e descarta entradas indesejados que não são numericas. 
  Ela recebe dois paramêtros: 
    --> message é o parâmetro da mensagem que deve estar no print
    --> validation é a string que encerra a execução do código, definida em código ao chamar esta função. 
*/

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
}

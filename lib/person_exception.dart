// Criando uma classe para tratar de exceções, implementando a classe Exception.
//
// Exception é uma classe INTERFACE (abstract interface class), por isso usamos implements.
// Apesar de não estar sendo usado no código, a classe foi criada para fins didáticos e uso futuro.
// Este tratamento customizado das exceções é útil para identificar onde o motivo do erro ter acontecido.
class NewPersonException implements Exception {
  String error() => "Invalid Input";

  @override
  String toString() {
    String message = "NewPersonException: ${error()}";
    return message;
  }
}

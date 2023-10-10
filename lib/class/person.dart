// # Classe Person
//
// Propriedades: as variáveis estabelecidas int classe
// Null Safety CHECK: podemos iniciar a variável como String?, permitindo que seja nula
// ou com valor "" (vazio, somente strings aceitam). Depende do caso.
// Encapsulamento <- em dart, variáveis iniciadas com _ são "privadas".
class Person {
  String _name = "";
  String _weight = "";
  String _height = "";

  // # Construtor
  //
  // É o método como a classe é inicializada, a estrutura do construtor é:
  //
  //   NomeDaClasse(agrumentos){
  //     inicialização da instância
  //   }
  //
  // Utilizando o construtor da classe, precisamos passar todos os parâmetros das instâncias obrigatórias.
  Person(String nome, String peso, String altura) {
    _name = nome;
    _weight = peso;
    _height = altura;
  }

  //Setter, como as variáveis instanciáveis não existem fora do escopo da classe, é preciso criar um método para acessar.
  void setName(String name) {
    _name = name;
  }

  void setWeight(String weight) {
    _weight = weight;
  }

  void setHeight(String height) {
    _height = height;
  }

  //Getter, como as variáveis instanciáveis não existem fora do escopo da classe, é preciso criar um método para reeuperar o valor.
  String getName() {
    return _name;
  }

  String getWeight() {
    return _weight;
  }

  String getHeight() {
    return _height;
  }

  // Sobrescrita de método é também um caso de polimorfismo, pois .toString() é um método da Objects e continua existindo como tal, porém o .toString() associado à Classe PersonAddress é diferente.
  //
  // Criamos um método, que retorna um MAP, para que os valores das variáveis sejam recuperados, de uma única vez, já devidamente formatados.
  @override
  String toString() {
    return {"Nome": _name, "Telefone": _weight, "Endereço": _height}.toString();
  }
}

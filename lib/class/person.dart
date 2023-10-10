// # Classe Person
//
// Propriedades: as variáveis estabelecidas int classe
// Null Safety CHECK: podemos iniciar a variável como String?, permitindo que seja nula
// ou com valor "" (vazio, somente strings aceitam). Depende do caso.
// Encapsulamento <- em dart, variáveis iniciadas com _ são "privadas".
class Person {
  String _firstName = "";
  String _phoneNumber = "";
  String _addressName = "";
  String _addressNumber = "";
  String _addressNeighbourhood = "";
  String _addressZipCode = "";

  // # Construtor
  //
  // É o método como a classe é inicializada, a estrutura do construtor é:
  //
  //   NomeDaClasse(agrumentos){
  //     inicialização da instância
  //   }
  //
  // Utilizando o construtor da classe, precisamos passar todos os parâmetros das instâncias obrigatórias.
  Person(String nome, String telefone, String nomeRua, String numero,
      String bairro, String cep) {
    _firstName = nome;
    _phoneNumber = telefone;
    _addressName = nomeRua;
    _addressNumber = numero;
    _addressNeighbourhood = bairro;
    _addressZipCode = cep;
  }

  //Setter, como as variáveis instanciáveis não existem fora do escopo da classe, é preciso criar um método para acessar.
  void setFirstName(String name) {
    _firstName = name;
  }

  void setPhoneNumber(String phone) {
    _phoneNumber = phone;
  }

  void setAddressName(String addressName) {
    _addressName = addressName;
  }

  void setAddressNumber(String addressNumber) {
    _addressNumber = addressNumber;
  }

  void setAddressNeighbourhood(String neighbourhood) {
    _addressNeighbourhood = neighbourhood;
  }

  void setAddressZipCode(String zipCode) {
    _addressZipCode = zipCode;
  }

  //Getter, como as variáveis instanciáveis não existem fora do escopo da classe, é preciso criar um método para reeuperar o valor.
  String getFirstName() {
    return _firstName;
  }

  String getPhoneNumber() {
    return _phoneNumber;
  }

  String getAddressName() {
    return _addressName;
  }

  String getAddressNumber() {
    return _addressNumber;
  }

  String getAddressNeighbourhood() {
    return _addressNeighbourhood;
  }

  String getAddressZipCode() {
    return _addressZipCode;
  }

  // Sobrescrita de método é também um caso de polimorfismo, pois .toString() é um método da Objects e continua existindo como tal, porém o .toString() associado à Classe PersonAddress é diferente.
  //
  // Criamos um método, que retorna um MAP, para que os valores das variáveis sejam recuperados, de uma única vez, já devidamente formatados.
  @override
  String toString() {
    return {
      "Nome": _firstName,
      "Telefone": _phoneNumber,
      "Endereço": _addressName,
      "Número": _addressNumber,
      "Bairro": _addressNeighbourhood,
      "CEP": _addressZipCode
    }.toString();
  }
}

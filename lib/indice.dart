class ComparacaoIMC {
  static String? comparacao(String indice) {
    // if (indice < 16) {
    //   print(
    //       "Seu índice de IMC indica que vc está com quadro de magreza extrema");
    // }
    double valor = 0;
    try {
      valor = double.parse(indice);
    } catch (e) {
      return null;
    }

    switch (valor) {
      case < 16:
        return "magreza extrema";
      case >= 16 && < 17:
        return "magreza moderada";
      case >= 17 && < 18.5:
        return "magreza leve";
      case >= 25 && < 30:
        return "sobrepeso";
      case >= 30 && < 35:
        return "obesidade grau I";
      case >= 35 && < 40:
        return "obesidade grau II (severa)";
      case >= 40:
        return "obesidade grau III (mórbida)";
      default:
        return "saudável";
    }
  }
}

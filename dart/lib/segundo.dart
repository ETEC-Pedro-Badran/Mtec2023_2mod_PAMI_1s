//Introdução a classes

class Soma {
  late double numero1;
  late double numero2;

  double executar() {
    return numero1 + numero2;
  }
}

void main(List<String> args) {
  var soma = Soma(); // criando o objeto
  soma.numero1 = 10; // atribuindo valor
  // ao atributo numero 1 do soma
  soma.numero2 = 20; // atribuindo valor
  // ao atributo numero 1 do soma
  print("O valor da soma é ${soma.executar()}");
}

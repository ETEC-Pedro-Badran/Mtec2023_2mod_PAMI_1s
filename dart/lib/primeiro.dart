/* - Instruodução a variáveis
   - operadores
   - estrutura condicional: if e switch case
   - métodos
   - método main
 */
void calculaIf(int num1, int num2, String op) {
  if (op == "-") {
    var resultado = num1 - num2;
    print("A Subtração de $num1 menos $num2 é igual $resultado");
  } else if (op == "+") {
    var resultado = num1 + num2;
    print("A soma de $num1 mais $num2 é igual $resultado");
  } else if (op == "*") {
    var resultado = num1 * num2;
    print("A multiplicação de $num1 por $num2 é igual $resultado");
  } else if (op == "/") {
    var resultado = num1 / num2;
    print("A divisão de $num1 por $num2 é igual $resultado");
  } else {
    print("Operação inválida");
  }
}

void calculaSw(int num1, int num2, String op) {
  switch (op) {
    case "-":
      var resultado = num1 - num2;
      print("A Subtração de $num1 menos $num2 é igual $resultado");
      break;
    case "+":
      var resultado = num1 + num2;
      print("A soma de $num1 mais $num2 é igual $resultado");
      break;
    case "*":
      var resultado = num1 * num2;
      print("A multiplicação de $num1 por $num2 é igual $resultado");
      break;
    case "/":
      var resultado = num1 / num2;
      print("A divisão de $num1 por $num2 é igual $resultado");
      break;
    default:
      print("Operação inválida");
  }
}

void main(List<String> args) {
  var op = "+";
  var numA = 10;
  var numB = 100;
  calculaIf(numA, numB, op);
}

import 'dart:io';

void main() {

  double? lerLado(String mensagem) {
    print(mensagem);
    String? input = stdin.readLineSync();
    return double.tryParse(input ?? '');
  }

  double? a = lerLado("Digite o primeiro lado do triângulo:");
  double? b = lerLado("Digite o segundo lado do triângulo:");
  double? c = lerLado("Digite o terceiro lado do triângulo:");

  if (a == null || b == null || c == null || a <= 0 || b <= 0 || c <= 0) {
    print("Entrada inválida. Por favor, insira apenas números positivos.");
    return;
  }
  if ((a + b > c) && (a + c > b) && (b + c > a)) {
    
    if (a == b && b == c) {
      print("Triângulo Equilátero: Todos os lados são iguais.");
    } else if (a == b || a == c || b == c) {
      print("Triângulo Isósceles: Dois lados são iguais.");
    } else {
      print("Triângulo Escaleno: Todos os lados são diferentes.");
    }
    
  } else {
    print("Os valores informados não formam um triângulo.");
  }
}
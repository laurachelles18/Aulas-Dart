import 'dart:io';

void main() {
  print("Digite o primeiro lado do triângulo:");
  double a = double.parse(stdin.readLineSync()!);

  print("Digite o segundo lado do triângulo:");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro lado do triângulo:");
  double c = double.parse(stdin.readLineSync()!);

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
import 'dart:io';
import 'dart:math';

void main() {
  print("--- Calculadora de Equação do 2º Grau (ax² + bx + c = 0) ---");

  stdout.write("Digite o valor de 'a': ");
  double a = double.parse(stdin.readLineSync()!);

  if (a == 0) {
    print("Erro: O coeficiente 'a' não pode ser 0 em uma equação do 2º grau. O programa será encerrado.");
    return;
  }

  stdout.write("Digite o valor de 'b': ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Digite o valor de 'c': ");
  double c = double.parse(stdin.readLineSync()!);

  if (b != 0 && c != 0) {
    print("\nA equação é classificada como: COMPLETA.");
  } else {
    print("\nA equação é classificada como: INCOMPLETA.");
  }

  double delta = pow(b, 2) - (4 * a * c);
  print("Valor de Delta: $delta");

  if (delta < 0) {
    print("A equação não possui raízes reais (Delta negativo).");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Delta é zero. A equação possui apenas uma raiz real: x = $x");
  } else {
 
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    
    print("Delta é positivo. A equação possui duas raízes reais:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}
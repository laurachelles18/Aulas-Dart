import 'dart:io';

void main() {
  print('Digite o salário do funcionário:');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    double salarioAtual = double.parse(entrada);
    double novoSalario = salarioAtual * 1.25;
    
    print('O novo salário com 25% de aumento é: R\$ ${novoSalario.toStringAsFixed(2)}');
  } else {
    print('Entrada inválida.');
  }
}
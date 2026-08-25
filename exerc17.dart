import 'dart:io';

void main() {
  stdout.write('Digite o valor do salário-base: R\$ ');
  String? entrada = stdin.readLineSync();

  double salarioBase = double.tryParse(entrada ?? '0') ?? 0.0;

  double gratificacao = salarioBase * 0.05;
  
  double imposto = salarioBase * 0.07;

  double salarioReceber = salarioBase + gratificacao - imposto;

  print('\n--- Resumo do Salário ---');
  print('Salário-base: R\$ ${salarioBase.toStringAsFixed(2)}');
  print('Gratificação (5%): R\$ ${gratificacao.toStringAsFixed(2)}');
  print('Imposto (7%): R\$ ${imposto.toStringAsFixed(2)}');
  print('-------------------------');
  print('Salário a receber: R\$ ${salarioReceber.toStringAsFixed(2)}');
}
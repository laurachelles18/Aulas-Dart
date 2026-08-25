import 'dart:io';

void main() {
  stdout.write('Digite o salário atual do funcionário: R$ ');
  String? entradaSalario = stdin.readLineSync();
  
  stdout.write('Digite o percentual de aumento (ex: 15 para 15%): ');
  String? entradaPercentual = stdin.readLineSync();

  double salario = double.tryParse(entradaSalario ?? '0') ?? 0;
  double percentual = double.tryParse(entradaPercentual ?? '0') ?? 0;

  double valorAumento = salario * (percentual / 100);
  double novoSalario = salario + valorAumento;

  print('\n--- Resultado ---');
  print('Salário atual: R\$ ${salario.toStringAsFixed(2)}');
  print('Valor do aumento: R\$ ${valorAumento.toStringAsFixed(2)}');
  print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
}
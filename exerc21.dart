import 'dart:io';

void main() {
  print('--- Calculadora Dart ---');

  stdout.write('Digite o primeiro número: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  print('\nEscolha a operação:');
  print('1 - Soma (+)');
  print('2 - Subtração (-)');
  print('3 - Multiplicação (*)');
  print('4 - Divisão (/)');
  stdout.write('Opção: ');
  String? opcao = stdin.readLineSync();

  if (num1 == null || num2 == null) {
    print('Erro: Por favor, insira números válidos.');
    return;
  }

  switch (opcao) {
    case '1':
      print('Resultado: ${num1 + num2}');
      break;
    case '2':
      print('Resultado: ${num1 - num2}');
      break;
    case '3':
      print('Resultado: ${num1 * num2}');
      break;
    case '4':
      if (num2 != 0) {
        print('Resultado: ${num1 / num2}');
      } else {
        print('Erro: Divisão por zero não é permitida.');
      }
      break;
    default:
      print('Opção inválida!');
  }
}
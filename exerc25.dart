import 'dart:io';

void main() {
  print('Digite o primeiro número inteiro:');
  int num1 = int.parse(stdin.readLineSync()!);
  
  print('Digite o segundo número inteiro:');
  int num2 = int.parse(stdin.readLineSync()!);

  int inicio = num1 < num2 ? num1 : num2;
  int fim = num1 > num2 ? num1 : num2;

  print('\nNúmeros no intervalo entre $inicio e $fim:');

  for (int i = inicio; i <= fim; i++) {
    stdout.write('$i ');
  }
  
  print('\n\nFim do programa.');
}
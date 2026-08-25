import 'dart:io';

void main() {
  print('Digite o número de termos (n) para a série de Fibonacci:');
  
  String? input = stdin.readLineSync();
  int n = int.tryParse(input ?? '0') ?? 0;

  if (n <= 0) {
    print('Por favor, digite um número maior que zero.');
    return;
  }

  print('Série de Fibonacci até o $nº termo:');
  
  int a = 0;
  int b = 1;

  for (int i = 1; i <= n; i++) {
    stdout.write('$b ');

    int proximo = a + b;
    a = b;
    b = proximo;
  }
  
  print('');
}
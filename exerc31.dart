import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro N: ');
  String? entrada = stdin.readLineSync();
  
  // Converte a entrada para inteiro
  int? n = int.tryParse(entrada ?? '');

  if (n == null || n < 1) {
    print('Por favor, digite um número inteiro maior ou igual a 1.');
    return;
  }

  print('Números primos entre 1 e $n:');
  
  for (int i = 1; i <= n; i++) {
    if (ehPrimo(i)) {
      stdout.write('$i ');
    }
  }
  print(''); // Apenas para pular linha ao final
}

// Função para verificar se um número é primo
bool ehPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;
  if (numero % 2 == 0) return false;

  // Verifica divisores ímpares até a raiz quadrada do número
  for (int i = 3; i * i <= numero; i += 2) {
    if (numero % i == 0) {
      return false;
    }
  }
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite um número inteiro: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? numero = int.tryParse(entrada);

    if (numero != null) {
      if (ehPrimo(numero)) {
        print('$numero é um número primo.');
      } else {
        print('$numero não é um número primo.');
      }
    } else {
      print('Por favor, digite um número inteiro válido.');
    }
  }
}

bool ehPrimo(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  int limite = sqrt(n).toInt();
  for (int i = 3; i <= limite; i += 2) {
    if (n % i == 0) {
    }
  }

  return true;
}
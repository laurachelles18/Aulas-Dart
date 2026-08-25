import 'dart:io';

void main() {
  
  stdout.write('Digite um número inteiro: ');
  
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? numero = int.tryParse(entrada);

    if (numero != null) {
     
      if (numero % 2 == 0) {
        print('O número $numero é par.');
      } else {
        print('O número $numero é ímpar.');
      }
    } else {
      print('Entrada inválida. Por favor, digite um número inteiro válido.');
    }
  }
}
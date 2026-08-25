import 'dart:io';

void main() {
  print('Digite um número:');
  
  String? entrada = stdin.readLineSync();
  
  if (entrada != null) {
    double? numero = double.tryParse(entrada);

    if (numero != null) {
      if (numero > 0) {
        print('O valor é positivo.');
      } else if (numero < 0) {
        print('O valor é negativo.');
      } else {
        print('O valor é zero (neutro).');
      }
    } else {
      print('Entrada inválida. Por favor, digite um número válido.');
    }
  }
}
import 'dart:io';

void main() {
  
  print('Digite o valor em metros:');
  

  String? entrada = stdin.readLineSync();
  
  if (entrada != null) {
    double? metros = double.tryParse(entrada);
    
    if (metros != null) {
      double centimetros = metros * 100;
      print('$metros metros equivalem a $centimetros centímetros.');
    } else {
      print('Erro: Por favor, digite um número válido.');
    }
  }
}
import 'dart:io';

void main() {
  print('Digite uma letra:');
  
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.length == 1) {
    String letra = entrada.toLowerCase();

    if (letra.codeUnitAt(0) >= 97 && letra.codeUnitAt(0) <= 122) {
      
      if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
        print('A letra "$letra" é uma vogal.');
      } else {
        print('A letra "$letra" é uma consoante.');
      }
      
    } else {
      print('Por favor, digite apenas uma letra válida.');
    }
  } else {
    print('Entrada inválida. Digite exatamente uma letra.');
  }
}
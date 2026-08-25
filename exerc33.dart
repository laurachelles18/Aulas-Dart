import 'dart:io';

void fizzBuzz(int numero) {
  if (numero % 3 == 0 && numero % 5 == 0) {
    print("FizzBuzz");
  } else if (numero % 3 == 0) {
    print("Fizz");
  } else if (numero % 5 == 0) {
    print("Buzz");
  } else {
    print(numero);
  }
}

void main() {
  print("Digite um número inteiro positivo:");
  
  // Lê a entrada do usuário
  String? entrada = stdin.readLineSync();
  
  // Converte para inteiro e chama a função
  if (entrada != null) {
    int? numero = int.tryParse(entrada);
    
    if (numero != null && numero > 0) {
      fizzBuzz(numero);
    } else {
      print("Por favor, digite um número inteiro positivo válido.");
    }
  }
}
import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;

  print("--- Contador de Números Pares e Ímpares ---");
  print("Digite um número inteiro (ou um número negativo para encerrar):");

  while (true) {
    stdout.write("Digite um número: ");
    String? entrada = stdin.readLineSync();
    
    // Converte a entrada para inteiro
    int? numero = int.tryParse(entrada ?? "");

    // Valida se o usuário digitou um número válido
    if (numero == null) {
      print("Entrada inválida. Por favor, digite um número inteiro.");
      continue;
    }
    if (numero < 0) {
      break;
    }
    if (numero % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  print("\n--- Resultado Final ---");
  print("Quantidade de números pares: $pares");
  print("Quantidade de números ímpares: $impares");
  print("Programa encerrado.");
}
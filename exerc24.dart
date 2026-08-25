import 'dart:io';

void main() {
  stdout.write("Digite um número entre 0 e 99: ");
  String? entrada = stdin.readLineSync();
  
  int? numero = int.tryParse(entrada ?? "");

  if (numero == null || numero < 0 || numero > 99) {
    print("Número inválido! Por favor, digite um número entre 0 e 99.");
    return;
  }

  print("O número $numero por extenso é: ${converterParaExtenso(numero)}");
}

String converterParaExtenso(int n) {
  if (n == 0) return "zero";

  final unidades = [
    "", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove",
    "dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezessete", "dezoito", "dezenove"
  ];

  final dezenas = [
    "", "", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"
  ];

  if (n < 20) {
    return unidades[n];
  }

  int dezena = n ~/ 10; 
  int unidade = n % 10; 

  if (unidade == 0) {
    return dezenas[dezena];
  } else {
    return "${dezenas[dezena]} e ${unidades[unidade]}";
  }
}
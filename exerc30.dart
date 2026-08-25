import 'dart:io';

void main() {
  print('--- Verificador de Palíndromos ---');
  stdout.write('Digite uma palavra ou frase: ');
  String entrada = stdin.readLineSync() ?? '';

  if (ehPalindromo(entrada)) {
    print('"${entrada}" É um palíndromo!');
  } else {
    print('"${entrada}" NÃO é um palíndromo.');
  }
}

bool ehPalindromo(String texto) {
  String limpo = texto.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  String invertido = limpo.split('').reversed.join('');

  print('Texto processado: $limpo');
  print('Texto invertido: $invertido');
  return limpo == invertido;
}

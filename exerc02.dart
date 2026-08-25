import 'dart:io';

void main() {
  // Exibe uma mensagem no terminal
  print('Digite o seu nome:');

  // Lê a linha digitada pelo usuário
  String? nome = stdin.readLineSync();

  // Exibe o resultado
  print('Olá, $nome! Seja bem-vindo.');
}

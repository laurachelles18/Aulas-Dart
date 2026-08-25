import 'dart:io';

void main() {
  // Exibe uma mensagem no terminal
  print('Digite o seu nome:');

  // Lê a linha digitada pelo usuário
  String? nome = stdin.readLineSync();

  // Exibe o resultado
  print('Olá, $nome! Seja bem-vindo.');
}


// Detalhes Importantes
// Import obrigatório: 
// A linha import 'dart:io'; no topo do arquivo é necessária para acessar os comandos de entrada e saída.
// O símbolo ? (Null Safety): O tipo String? indica que a variável pode ser nula, caso o terminal feche ou falhe ao ler a informação.
// Leitura de Números: O terminal sempre lê o texto como String. 
// Para ler números, você precisa converter o texto usando int.parse() ou double.parse()
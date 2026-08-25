import 'dart:io';

void main() {
  List<String> nomesAlunos = [];
  
  print('--- Cadastro de Alunos ---');
  print('Digite o nome dos alunos (digite "fim" para encerrar):');

  // Loop para ler os nomes dos alunos
  while (true) {
    stdout.write('Nome do aluno: ');
    String? entrada = stdin.readLineSync();

    // Verifica se a entrada não é nula e se o usuário digitou "fim"
    if (entrada == null || entrada.toLowerCase() == 'fim') {
      break;
    }

    if (entrada.isNotEmpty) {
      nomesAlunos.add(entrada);
    }
  }

  // Verifica se a lista não está vazia antes de ordenar
  if (nomesAlunos.isNotEmpty) {
    // O método .sort() ordena a lista em ordem crescente (alfabética)
    nomesAlunos.sort();

    print('\n--- Lista de Alunos em Ordem Alfabética ---');
    for (var nome in nomesAlunos) {
      print('- $nome');
    }
  } else {
    print('\nNenhum aluno foi cadastrado.');
  }
}
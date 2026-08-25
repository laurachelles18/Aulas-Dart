import 'dart:io';

void main() {
  // Matriz de 4 linhas (alunos) e 5 colunas (4 notas + 1 média)
  List<List<double>> matrizNotas = List.generate(4, (_) => List.filled(5, 0.0));
  List<String> nomesAlunos = [];

  // Leitura dos dados
  for (int i = 0; i < 4; i++) {
    print('Digite o nome do ${i + 1}º aluno:');
    nomesAlunos.add(stdin.readLineSync()!);

    double soma = 0;
    for (int j = 0; j < 4; j++) {
      print('Digite a ${j + 1}ª nota do aluno ${nomesAlunos[i]}:');
      double nota = double.parse(stdin.readLineSync()!);
      
      matrizNotas[i][j] = nota;
      soma += nota;
    }

    // Calcula a média e armazena na última coluna (índice 4)
    matrizNotas[i][4] = soma / 4;
  }

  // Exibição dos resultados
  print('\n--- Boletim Escolar ---');
  for (int i = 0; i < 4; i++) {
    print('Aluno: ${nomesAlunos[i]}');
    print('Notas: ${matrizNotas[i].sublist(0, 4).join(', ')}');
    print('Média Final: ${matrizNotas[i][4].toStringAsFixed(2)}');
    print('------------------------');
  }
}
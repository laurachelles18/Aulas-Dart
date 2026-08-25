import 'dart:io';

void main() {

  stdout.write('Digite o nome da disciplina: ');
  String? disciplina = stdin.readLineSync();

  List<double> notas = [];
  double soma = 0;

  for (int i = 1; i <= 4; i++) {
    stdout.write('Digite a nota $i: ');
    String? input = stdin.readLineSync();
    
    double nota = double.tryParse(input ?? '0') ?? 0.0;
    notas.add(nota);
    soma += nota;
  }

  double media = soma / 4;
  String condicao = (media >= 7) ? 'Aprovado' : 'Reprovado';

  print('\n--- Resultado Final ---');
  print('Disciplina: $disciplina');
  print('Média Final: ${media.toStringAsFixed(1)}');
  print('Condição: $condicao');
}
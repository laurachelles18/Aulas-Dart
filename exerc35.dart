import 'dart:io';

void main() {
  // Cria um vetor (lista) de 4 posições para armazenar as notas
  List<double> notas = [];
  double soma = 0;

  // Leitura das 4 notas
  for (int i = 0; i < 4; i++) {
    stdout.write('Digite a nota ${i + 1}: ');
    double? nota = double.tryParse(stdin.readLineSync()!);
    
    if (nota != null) {
      notas.add(nota);
      soma += nota;
    } else {
      print('Entrada inválida. Tente novamente.');
      i--; // Decrementa para repetir a leitura desta posição
    }
  }

  // Cálculo da média
  double media = soma / notas.length;

  // Impressão da média
  print('\n--- Resultados ---');
  print('A média das notas é: ${media.toStringAsFixed(2)}');

  // Impressão dos elementos maiores que a média
  print('Notas maiores que a média:');
  bool encontrouMaior = false;
  for (double nota in notas) {
    if (nota > media) {
      print(nota);
      encontrouMaior = true;
    }
import 'dart:io';

void main() {
  print('Digite uma palavra:');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    List<String> consoantes = [];
    
    // Definimos uma string com as vogais para facilitar a verificação
    String vogais = 'aeiouáàâãéêíóôõú';

    // Percorre cada caractere da palavra
    for (int i = 0; i < entrada.length; i++) {
      String caractere = entrada[i].toLowerCase();

      // Verifica se é uma letra e se NÃO é uma vogal
      // (RegEx [a-z] garante que não estamos pegando espaços ou números)
      if (RegExp(r'[a-z]').hasMatch(caractere) && !vogais.contains(caractere)) {
        consoantes.add(caractere);
      }
    }

    print('Consoantes encontradas: $consoantes');
    print('Total de consoantes: ${consoantes.length}');
  } else {
    print('Você não digitou uma palavra válida.');
  }
}
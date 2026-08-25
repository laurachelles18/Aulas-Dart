String trocarEConcatenar(String a, String b) {
  // Extrai os 2 primeiros caracteres de cada string
  String prefixoA = a.substring(0, 2);
  String prefixoB = b.substring(0, 2);

  // Extrai o restante das strings a partir do índice 2
  String restoA = a.substring(2);
  String restoB = b.substring(2);

  // Monta as novas strings trocando os prefixos
  String novaA = prefixoB + restoA;
  String novaB = prefixoA + restoB;

  // Retorna as strings concatenadas com um espaço
  return '$novaA $novaB';
}

void main() {
  // Testes
  print(trocarEConcatenar('mix', 'pod'));    // Saída: 'pox mid'
  print(trocarEConcatenar('dog', 'dinner')); // Saída: 'dig donner'
}
void main() {
  String a = 'abcde';
  String b = '12345';

  print(combinarStrings(a, b)); // Saída esperada: "abc123de45"
}

String combinarStrings(String a, String b) {
  // Função auxiliar para dividir a string
  List<String> dividir(String s) {
    int metade = (s.length / 2).ceil();
    String frente = s.substring(0, metade);
    String tras = s.substring(metade);
    return [frente, tras];
  }

  // Obtém as metades de ambas as strings
  List<String> partesA = dividir(a);
  List<String> partesB = dividir(b);

  // a-frente + b-frente + a-trás + b-trás
  return partesA[0] + partesB[0] + partesA[1] + partesB[1];
}
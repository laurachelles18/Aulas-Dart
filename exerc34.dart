void main() {
  // Inicializamos uma lista vazia para armazenar os números
  List<int> impares = [];

  // Percorremos de 1 até 100
  for (int i = 1; i <= 100; i++) {
    // Verificamos se o resto da divisão por 2 é diferente de zero
    if (i % 2 != 0) {
      impares.add(i); // Adiciona o número ao vetor
    }
  }

  // Exibindo o resultado
  print("Números ímpares até 100:");
  print(impares);
}
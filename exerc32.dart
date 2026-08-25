void main() {
  // Inicialização das variáveis
  double populacaoA = 80000;
  double populacaoB = 200000;
  
  double taxaCrescimentoA = 0.03; // 3%
  double taxaCrescimentoB = 0.015; // 1.5%
  
  int anos = 0;

  // Estrutura de repetição: enquanto A não ultrapassar ou igualar B
  while (populacaoA < populacaoB) {
    populacaoA += populacaoA * taxaCrescimentoA;
    populacaoB += populacaoB * taxaCrescimentoB;
    anos++;
  }

  // Exibição dos resultados
  print("Serão necessários $anos anos para que a população do país A "
        "ultrapasse ou iguale a população do país B.");
  
  print("População final do País A: ${populacaoA.toStringAsFixed(0)}");
  print("População final do País B: ${populacaoB.toStringAsFixed(0)}");
}
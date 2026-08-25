import 'dart:io';

void main() {
  stdout.write('Digite o valor do depósito: R\$ ');
  double? deposito = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite a taxa de juros (ex: 5 para 5%): ');
  double? taxa = double.tryParse(stdin.readLineSync() ?? '');

  if (deposito != null && taxa != null) {
 double rendimento = deposito * (taxa / 100);
    

 double total = deposito + rendimento;

    print('\n--- Resultados ---');
    print('Valor do rendimento: R\$ ${rendimento.toStringAsFixed(2)}');
    print('Valor total após o rendimento: R\$ ${total.toStringAsFixed(2)}');
  } else {
    print('Erro: Por favor, insira valores numéricos válidos.');
  }
}
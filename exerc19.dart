import 'dart:io';

void main() {
  List<double> numeros = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write('Digite o $iº número: ');
    String? entrada = stdin.readLineSync();
    
    if (entrada != null) {
      numeros.add(double.parse(entrada));
    }
  }

  numeros.sort((a, b) => b.compareTo(a));

  print('Os números em ordem decrescente são: $numeros');
}
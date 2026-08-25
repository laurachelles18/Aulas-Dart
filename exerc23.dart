import 'dart:io';

void decomporNumero(int n) {
  if (n >= 1000 || n < 0) {
    print("Por favor, insira um número entre 0 e 999.");
    return;
  }

  int centenas = (n ~/ 100);
  int dezenas = (n % 100) ~/ 10;
  int unidades = (n % 10);

  List<String> partes = [];

  if (centenas > 0) {
    partes.add('$centenas ${centenas == 1 ? "centena" : "centenas"}');
  }

  if (dezenas > 0) {
    partes.add('$dezenas ${dezenas == 1 ? "dezena" : "dezenas"}');
  }

  if (unidades > 0) {
    partes.add('$unidades ${unidades == 1 ? "unidade" : "unidades"}');
  }

  String resultado = "";
  if (partes.isEmpty) {
    resultado = "0 unidades";
  } else if (partes.length == 1) {
    resultado = partes[0];
  } else {
    String ultimaParte = partes.removeLast();
    resultado = "${partes.join(', ')} e $ultimaParte";
  }

  print("$n = $resultado");
}

void main() {
  List<int> testes = [326, 300, 100, 320, 310, 305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7, 16];

  for (int numero in testes) {
    decomporNumero(numero);
  }
}
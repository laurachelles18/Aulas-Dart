import 'dart:io';

void main() {
  print("Em que turno você estuda?");
  print("Digite M-Matutino, V-Vespertino ou N-Noturno:");
  
  String? turno = stdin.readLineSync()?.toUpperCase();

  switch (turno) {
    case 'M':
      print("Bom Dia!");
      break;
    case 'V':
      print("Boa Tarde!");
      break;
    case 'N':
      print("Boa Noite!");
      break;
    default:
      print("Valor Inválido!");
  }
}
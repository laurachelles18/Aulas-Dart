import 'dart:io';

void main(){
    print('Digite o primeiro número:');
    String? numero1 = stdin.readLineSync();
    double numero1 = doubl.parse(numero1Texto!);

    print('Digite o segundo número: ');
    String? numero2Texto = stdin.readLineSync();
    double numero2 = double.parse(numero2Texto!);

    print('Escolhe a operação (Soma ou Subtração)');
    String? operação = stdin.readLineSync();

}
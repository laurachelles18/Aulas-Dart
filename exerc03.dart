import 'dart:io';

void main() {
    print('Digite o 1 número: ');

    int? num1 = int.parse(stdin.readLineSync() ?? "0");
    print('Digite o 2 número: ');

    int? num2 = int.parse(stdin.readLineSync() ?? "0");

    print('Digite o 3 número: ');

    int? num3 = int.parse(stdin.readLineSync() ?? "0");

    var soma = num1 + num2 + num3;

    print('RESULTADO é $soma')
}
import 'dart:io';

void main(){
    print('Digite a idade da pessoa:');
    String? idadeTexto = stdin.readLineSync();

    int idade = int.parse(idadeTexto);

    if(idade >= 18) {
        print('A pessoa é maior de idade.');
    }else{
        print('A pessoa é menor de idade.');
    }
}
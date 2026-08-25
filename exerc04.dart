import 'dart:io';


void main(){
    print('Digite o 1 número: ');
    int? num1 = int.parse(stdin.readLineSync() ?? "0");

    print('Digite o 2 número: ');
     int? num2 = int.parse(stdin.readLineSync() ?? "0");

     if(num1 > num2){
        print('O maior número é $num1');
     }else if (num2 > num1){
        print('O maior número é o $num2');
     }else{
        print('Os números são iguais');
     }
        
     
    
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
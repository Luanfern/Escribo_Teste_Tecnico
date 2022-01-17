import 'dart:io';
 
void main(){
   //Esta função realizará uma leitura de um número inteiro positivo inserido e retornará a soma dos números divisiveis por 3 e 5 que sejam inferiores ao número inserido.
  somatorio(){
    //As linhas 8 e 9 realizam a leitura do número inteiro positivo inserido pelo usuário.
    print("Insira um numero inteiro positivo:");
    int numero = int.parse(stdin.readLineSync()!); 

    //As linhas 12 e 13 inicializam as variáveis que serão utilizadas para armazenar os números divisiveis por 3 e 5.
    int soma = 0;
    List<int> numeros_somados = [];

    //A Estrutura de repetição que se inicia na linha 16 realiza a conta responsável por verificar se o número é divisível por 3 ou 5.
    for(int i = 0; i < numero; i++){
        //O if verifica se o número é divisível por 3 ou 5, utilzando o operador %.
        if(i % 3 == 0 || i % 5 == 0){
          //A variável soma realiza a soma dos números que são divisiveis por 3 e 5.
          soma += i;
          //A variável soma realiza o aramazenamento dos números que são divisiveis por 3 e 5, exceto o 0, pois a soma dos números 0 não é necessária.
          i == 0 ? null : numeros_somados.add(i);
        }
    }
    //As linhas 25 imprime os números que foram somados.
    //print('Os numeros somados foram: ${numeros_somados.toString().replaceAll(',', ' +').replaceAll('[', '').replaceAll(']', '')}');
    //A linha 27 retorna a soma dos números que são divisiveis por 3 e 5.
    return soma;

  }
  //Está é a chamada da função somatorio.
  print('A soma dos numeros divisiveis por 3 e 5 e inferiores ao numero inserido e: '+ somatorio().toString());

}
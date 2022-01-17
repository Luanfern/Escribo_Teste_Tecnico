import 'dart:io';
 
void main(){
   //Esta fun��o realizar� uma leitura de um n�mero inteiro positivo inserido e retornar� a soma dos n�meros divisiveis por 3 e 5 que sejam inferiores ao n�mero inserido.
  somatorio(){
    //As linhas 8 e 9 realizam a leitura do n�mero inteiro positivo inserido pelo usu�rio.
    print("Insira um numero inteiro positivo:");
    int numero = int.parse(stdin.readLineSync()!); 

    //As linhas 12 e 13 inicializam as vari�veis que ser�o utilizadas para armazenar os n�meros divisiveis por 3 e 5.
    int soma = 0;
    List<int> numeros_somados = [];

    //A Estrutura de repeti��o que se inicia na linha 16 realiza a conta respons�vel por verificar se o n�mero � divis�vel por 3 ou 5.
    for(int i = 0; i < numero; i++){
        //O if verifica se o n�mero � divis�vel por 3 ou 5, utilzando o operador %.
        if(i % 3 == 0 || i % 5 == 0){
          //A vari�vel soma realiza a soma dos n�meros que s�o divisiveis por 3 e 5.
          soma += i;
          //A vari�vel soma realiza o aramazenamento dos n�meros que s�o divisiveis por 3 e 5, exceto o 0, pois a soma dos n�meros 0 n�o � necess�ria.
          i == 0 ? null : numeros_somados.add(i);
        }
    }
    //As linhas 25 imprime os n�meros que foram somados.
    //print('Os numeros somados foram: ${numeros_somados.toString().replaceAll(',', ' +').replaceAll('[', '').replaceAll(']', '')}');
    //A linha 27 retorna a soma dos n�meros que s�o divisiveis por 3 e 5.
    return soma;

  }
  //Est� � a chamada da fun��o somatorio.
  print('A soma dos numeros divisiveis por 3 e 5 e inferiores ao numero inserido e: '+ somatorio().toString());

}
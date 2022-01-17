//Cria a função somatorio onde realiza a leitura do numero inserido e realiza a soma dos números divisiveis por 3 e 5 menores que o numero inserido.
function somatorio() {
    //Realiza a leitura do numero inserido.
    const input = prompt("Insira um numero inteiro positivo:");
    //Trata o número inserido para que ele seja um número inteiro.
    let numero = parseInt(input);
    //Realiza uma verificação para ver se o número inserido foi menor que zero ou uma string.
    if (numero <= 0 || isNaN(numero)) {
        alert("Insira um numero inteiro positivo!");
        //Se o número inserido não for positivo, a função retornara false, não havendo soma e ocorrendo a finalização da função.
        return false;
    }
    //Inicia a variavel soma com zero.
    let soma = 0;
    //Estrutura de repetição for para realizar a soma dos números divisiveis por 3 e 5 menores que o numero inserido.
    for (let i = 1; i < numero; i++) {
        //Realiza a verificação se o número é divisivel por 3 ou 5.
        if (i % 3 == 0 || i % 5 == 0) {
            //Realiza a soma dos números divisiveis por 3 e 5 menores que o numero inserido.
            soma += i;
        }
    }
    //Retorna a soma dos números divisiveis por 3 e 5 menores que o numero inserido.
    return soma;
}
//Realiza a primeira chamada da função somatorio.
alert(somatorio());
//Cria uma chamada para caso o buttom com id "realizarsomatorio" seja clicado, a função somatorio será chamada novamente.
document.getElementById('realizarsomatorio').addEventListener('click', function () {
    alert(somatorio());
});
//Cria a fun��o somatorio onde realiza a leitura do numero inserido e realiza a soma dos n�meros divisiveis por 3 e 5 menores que o numero inserido.
function somatorio() {
    //Realiza a leitura do numero inserido.
    const input = prompt("Insira um numero inteiro positivo:");
    //Trata o n�mero inserido para que ele seja um n�mero inteiro.
    let numero = parseInt(input);
    //Realiza uma verifica��o para ver se o n�mero inserido foi menor que zero ou uma string.
    if (numero <= 0 || isNaN(numero)) {
        alert("Insira um numero inteiro positivo!");
        //Se o n�mero inserido n�o for positivo, a fun��o retornara false, n�o havendo soma e ocorrendo a finaliza��o da fun��o.
        return false;
    }
    //Inicia a variavel soma com zero.
    let soma = 0;
    //Estrutura de repeti��o for para realizar a soma dos n�meros divisiveis por 3 e 5 menores que o numero inserido.
    for (let i = 1; i < numero; i++) {
        //Realiza a verifica��o se o n�mero � divisivel por 3 ou 5.
        if (i % 3 == 0 || i % 5 == 0) {
            //Realiza a soma dos n�meros divisiveis por 3 e 5 menores que o numero inserido.
            soma += i;
        }
    }
    //Retorna a soma dos n�meros divisiveis por 3 e 5 menores que o numero inserido.
    return soma;
}
//Realiza a primeira chamada da fun��o somatorio.
alert(somatorio());
//Cria uma chamada para caso o buttom com id "realizarsomatorio" seja clicado, a fun��o somatorio ser� chamada novamente.
document.getElementById('realizarsomatorio').addEventListener('click', function () {
    alert(somatorio());
});
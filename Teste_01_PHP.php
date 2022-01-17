<?php
    //Inicializaзгo da funзгo somatorio para realizar a soma dos numeros divisiveis por 3 e 5 e inferiores ao numero inserido.
    function somatorio() {
        //A linha 5 realiza a leitura de um numero inserido pelo usuario.
        $numero = readline("Insira um numero inteiro positivo: ");
        //Inicializa a variavel soma com o valor 0.	
        $soma = 0;
        //Estrutur de repetiзгo para realizar a soma dos numeros divisiveis por 3 e 5 e inferiores ao numero inserido.
        for ($i = 1; $i < $numero; $i++) {
            //If para verificar se  o nъmeeo й divisivel por 3 ou 5.
            if ($i % 3 == 0 || $i % 5 == 0) {
                //Incrementa a variavel soma com o valor do nъmero.
                $soma += $i;
            }
        }
        //Retorna a variavel soma.
        return $soma;
      }
      //Chamada da funзгo somatorio;
      echo somatorio();
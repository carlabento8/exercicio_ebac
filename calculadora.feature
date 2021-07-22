            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de dois números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Quando eu somar <número1> + <número2>
            Então o resultado deve ser <total>

            Exemplos:
            | número1 | número2 | total |
            | 2       | 10      | 12    |
            | 2       | 20      | 22    |
            | 2       | 30      | 32    |
            | 2       | 100     | 102   |
            | 2       | 101     | 104   |

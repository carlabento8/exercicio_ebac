            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que cliente está autenticado na EBAC-SHOP
            Quando selecionar produto

            Cenário: Selecionando  produto
            E escolher a cor, tamanho e quantidade
            Então produto é adicionado ao carrinho

            Cenário: Selecionando produto sem um item obrigatório
            E escolher cor e tamanho
            Então é exibida uma mensagem "Por favor, escolher a quantidade do produto"

            Cenário: Trava na quantidade de produto
            E escolher a quantidade de 10 unidades do produto
            Então site trava desabilita o ícone de adicionar mais produtos

            Cenário: Validar botão "Limpar"
            Quando clicar no botão "Limpar"
            Então retorna para o estado original

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando digitar o usuário "mariachiquinha@hotmail.com"
            E senha "genaro@123"
            Então usuário é direcionado para tela de ckeckout "Detalhamento de faturamento"

            Cenário: Autenticação com dados inválidos
            Quando digitar o usuário "zebrablabla"
            E senha "babababa"
            Então é exibida a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuário            | senha             | mensagem                      |
            | genaro@gmail.com   | mariachiquinha123 | "Detalhamento de faturamento" |
            | joaquina@gmail.com | princesa212       | "Detalhamento de faturamento" |
            | xzZzZ@teste.com    | ##@#@             | "Usuário ou senha inválidos"  |

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que usuário esteja na tela de Checkout

            Cenário: Campos obrigatórios no cadastro
            Quando preencher todos os dados obrigatórios marcado com asterisco
            Então botão finalizar compra é habilitado

            Cenário: Campos obrigatórios no cadastro sem preenchimento
            Quando não preencher algum dado obrigatório marcado com asterisco
            Então é exibida uma mensagem de alerta "Preencher dados obrigatórios"

            Cenário: Validar formato de e-mail inválido
            Quando digitar e-mail "visconde.com.br"
            Então é exibida uma mensagem de erro "Formato de e-mail inválido"

            Cenário: Validar finalização de compra sem preeencher os dados obrigatórios
            Quando não preencher os dados obrigatórios
            Então é exibida uma mensagem de alerta "Preencher dados obrigatórios"








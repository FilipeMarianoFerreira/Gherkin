#language:  pt
Funcionalidade: Configuração de produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de detalhes de um produto

  Esquema do Cenário: Validação das seleções obrigatórias e quantidade permitida
    Quando seleciono a cor "<cor>"
    E seleciono o tamanho "<tamanho>"
    E seleciono a quantidade "<quantidade>"
    Então o botão "Adicionar ao carrinho" deve estar "<estado_botao>"

    Exemplos:
      | cor     | tamanho | quantidade | estado_botao        |
      | Azul    | M       | 1          | habilitado          |
      | Azul    |         | 1          | desabilitado        |
      | Azul    | M       |            | desabilitado        |
      | Azul    | M       | 11         | desabilitado        |
      | Azul    | M       | 10         | habilitado          |

  Cenário: Limpar as seleções volta ao estado original
    Quando preencho cor, tamanho e quantidade
    E clico no botão "Limpar"
    Então os campos de cor, tamanho e quantidade devem estar vazios
    E o botão "Adicionar ao carrinho" deve estar desabilitado

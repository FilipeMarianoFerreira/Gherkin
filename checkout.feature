#language:  pt
Funcionalidade: Cadastro de cliente no checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro no checkout

  Esquema do Cenário: Validação dos dados obrigatórios e formato do e-mail
    Quando preencho os campos obrigatórios com:
      | nome         | sobrenome   | email               | senha     |
      | <nome>       | <sobrenome> | <email>             | <senha>   |
    E clico no botão "Cadastrar"
    Então o sistema deve "<resultado>"

    Exemplos:
      | nome     | sobrenome | email               | senha     | resultado                                           |
      | Ana      | Silva     | ana@dominio.com     | 123456    | concluir o cadastro com sucesso                    |
      | Ana      | Silva     | ana@dominio         | 123456    | exibir mensagem de erro: "E-mail em formato inválido" |
      | Ana      | Silva     |                     | 123456    | exibir mensagem de alerta: "Preencha todos os campos obrigatórios" |
      |          | Silva     | ana@dominio.com     | 123456    | exibir mensagem de alerta: "Preencha todos os campos obrigatórios" |
      | Ana      |           | ana@dominio.com     | 123456    | exibir mensagem de alerta: "Preencha todos os campos obrigatórios" |
      | Ana      | Silva     | ana@dominio.com     |           | exibir mensagem de alerta: "Preencha todos os campos obrigatórios" |

#language:  pt
Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login da EBAC-SHOP

  Esquema do Cenário: Tentativa de login com diferentes combinações de credenciais
    Quando insiro o usuário "<usuario>" e a senha "<senha>"
    E clico no botão "Entrar"
    Então o sistema deve exibir o "<resultado>"

    Exemplos:
      | usuario         | senha          | resultado                                  |
      | joao@email.com  | senha123       | redirecionar para a tela de checkout       |
      | joao@email.com  |                | exibir a mensagem "Usuário ou senha inválidos" |
      |                 | senha123       | exibir a mensagem "Usuário ou senha inválidos" |
      | joao@email.com  | senhaErrada    | exibir a mensagem "Usuário ou senha inválidos" |
      | errado@email.com| senha123       | exibir a mensagem "Usuário ou senha inválidos" |


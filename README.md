# Inmana
## O que é o Inmana?

O Inmana é um projeto desenvolvido durante o 5º NLW, que é um evento oferecido pela empresa Rocketseat. O projeto ( que é apenas back-end ) foi criado utilizando as tecnologias Elixix e Phoenix, com a finalidade de servir como um gerenciador de estoques de restaurantes, alertando sempre que um produto estiver próximo da sua data de vencimento.   

## Funcionalidades disponíveis
  * Criar novos restaurantes
  * Cadastrar os produtos de cada restaurante
  * Listar os produtos cadastrados 
  
## Informações sobre como executar o projeto

  * Primeiramente, faça o clone do repositório a partir do github
  * Instale o phoenix `mix archive.install hex phx_new 1.5.8`
  * Instale as dependências do projeto `mix deps.get`
  * Instale a database e rode as migrations com `mix ecto.setup`
  * Inicie o servidor do phoenix `mix phx.server`
  * Caso precise você pode alterar as configurações do banco de dados pelo arquivo `dev.exs` e no arquivo `config/test.exs`

Agora você pode acessar através do seu browser: [`localhost:4000`](http://localhost:4000).

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).
  
## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

# User

O `User` é o model central de autenticação da aplicação. Tanto o [[Manager]] quanto o [[Cashier]] são registros dessa mesma tabela `users` — o que diferencia um do outro é apenas o campo `role`.

## Autenticação

A autenticação é feita via **JWT** (JSON Web Token), usando a gem `devise-jwt` em conjunto com o Devise:

- O login (`POST /users/sign_in`) devolve um token JWT no header `Authorization`.
- O logout (`DELETE /users/sign_out`) invalida o token através da revocation strategy `JTIMatcher`, baseada na coluna `jti`.
- Todas as rotas da API exigem autenticação por padrão (`before_action :authenticate_user!` no `ApplicationController`), com exceção do próprio sign-in.
- O token expira em 1 dia (configurado em `config/initializers/devise.rb`).

## Campos principais

- `email` / `password` — autenticação (Devise `:database_authenticatable`)
- `name` — nome do usuário
- `role` — define se o usuário é [[Manager]] (`2`) ou [[Cashier]] (`1`)
- `jti` — identificador do token JWT atual, usado para revogação no logout

## Ver também

- [[Manager]] — papel com visão administrativa completa, é um `User` com `role: manager`.
- [[Cashier]] — papel vinculado a uma única unidade, é um `User` com `role: cashier`.
- [[Diagrama de logistica.svg]] — diagrama do banco de dados (tabela `users`).

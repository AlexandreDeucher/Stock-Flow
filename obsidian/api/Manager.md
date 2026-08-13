# Manager (Gerente/Dono)

O manager é o dono de uma ou mais lojas/franquias e tem a visão administrativa completa do sistema. Diferente do [[Cashier]], ele não está vinculado a uma única unidade — enxerga e gerencia todas as suas lojas.

## Responsabilidades de cadastro

- Cadastra e gerencia as unidades (lojas), cada uma com seu próprio estoque independente.
- Cadastra e gerencia os colaboradores ([[Cashier|cashiers]]), vinculando cada um à sua respectiva unidade.
- Cadastra e mantém o catálogo de produtos.

## Visão gerencial (todas as unidades)

- Acompanha o desempenho de vendas de cada loja e do conjunto.
- Identifica quais produtos mais vendem e quais têm baixa saída.
- Monitora os níveis de estoque em tempo real, sendo alertado sobre produtos em falta ou próximos do estoque mínimo em qualquer unidade.

O manager tem visão consolidada de todas as unidades: quais produtos estão vendendo mais e acompanhamento real de falta de estoque em qualquer loja.

## No banco de dados

O manager e o [[Cashier]] são registros da mesma tabela `users` — não existem tabelas separadas para cada papel. O que os diferencia é o campo `role` (`manager` = 2, ver [[Cashier]] para o valor do cashier). Veja a tabela `users` no [[Diagrama de logistica.svg|diagrama do banco]].

## Ver também

- [[Cashier]] — colaborador vinculado a uma única unidade, cadastrado pelo manager.
- [[User]] — model de autenticação (JWT) do qual o manager é um registro.
- [[Diagrama de logistica.svg]] — diagrama do banco de dados (tabela `users`).

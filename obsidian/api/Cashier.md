# Cashier (Caixa/Colaborador)

O cashier é o colaborador que trabalha em uma loja específica, cadastrado e vinculado pelo [[Manager]]. Diferente do manager, ele está vinculado a uma única unidade e atua apenas dentro dela — não tem visão nem acesso às outras lojas.

## Responsabilidades

- Registra os pedidos que movimentam o estoque da sua unidade — tanto saídas (vendas) quanto entradas, conforme o tipo do pedido.
- A cada pedido registrado, o sistema debita ou credita automaticamente o estoque dos produtos daquela loja.
- Consulta os produtos e o estoque da própria unidade.

## Restrições

- Só enxerga e movimenta dados da unidade à qual está vinculado.
- Não cadastra usuários, unidades ou produtos — essas funções são exclusivas do [[Manager]].

## No banco de dados

O cashier e o [[Manager]] são registros da mesma tabela `users` — não existem tabelas separadas para cada papel. O que os diferencia é o campo `role` (`cashier` = 1, ver [[Manager]] para o valor do manager). Veja a tabela `users` no [[Diagrama de logistica.svg|diagrama do banco]].

## Ver também

- [[Manager]] — cadastra e gerencia os cashiers, com visão de todas as unidades.
- [[Diagrama de logistica.svg]] — diagrama do banco de dados (tabela `users`).

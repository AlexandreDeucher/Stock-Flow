# Unit (Unidade/Loja)

A unidade é a loja/franquia do sistema. Cada unidade tem seu próprio estoque, independente das demais — um produto pode estar em falta em uma loja e sobrando em outra, sem que uma interfira na outra.

## Cadastro e gestão

- O cadastro e a manutenção das unidades são responsabilidade exclusiva do [[Manager]], que pode ter uma ou várias lojas.
- Cada unidade é identificada pelo CNPJ e guarda os dados de endereço (CEP, rua e número), além do nome pelo qual é conhecida no dia a dia.
- Ao cadastrar um [[Cashier]], o manager vincula o colaborador a uma unidade específica.

## Papel no estoque

- Todo produto tem seu nível de estoque contado por unidade.
- Os pedidos registrados pelo [[Cashier]] debitam ou creditam o estoque da unidade em que ele trabalha.
- Os alertas de falta e de estoque mínimo são disparados por unidade, e é assim que o [[Manager]] consegue distinguir qual loja precisa de reposição.

## Visibilidade

- O [[Manager]] enxerga todas as suas unidades e acompanha o desempenho de cada uma e do conjunto.
- O [[Cashier]] enxerga apenas a unidade à qual está vinculado.

## No banco de dados

A tabela `units` guarda `name`, `cnpj`, `cep`, `street` e `street_number`, todos obrigatórios. Veja a tabela no [[Diagrama de logistica.svg|diagrama do banco]].

## Ver também

- [[Manager]] — cadastra e gerencia as unidades, com visão consolidada de todas.
- [[Cashier]] — vinculado a uma única unidade, movimenta apenas o estoque dela.
- [[Diagrama de logistica.svg]] — diagrama do banco de dados (tabela `units`).

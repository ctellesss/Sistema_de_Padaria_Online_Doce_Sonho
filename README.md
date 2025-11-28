# Sistema de Padaria Online — Doce Sonho

## Experiência Prática 4 — Implementação e Manipulação de Dados (SQL)

Este repositório contém a implementação completa do **banco de dados relacional** para o sistema de gestão da padaria online **Doce Sonho**. O projeto foi desenvolvido para a disciplina de **Modelagem de Banco de Dados**, demonstrando a aplicação prática dos conceitos aprendidos.

O objetivo é aplicar conhecimentos de **DDL** (Definição), **DML** (Manipulação) e **DQL** (Consulta), organizando o projeto em scripts SQL funcionais, padronizados e bem estruturados, prontos para a gestão de um e-commerce de alimentos.

---

##  Estrutura do Repositório

O projeto é organizado em quatro scripts SQL sequenciais e este arquivo de documentação:

* **`1_DDL_Criacao_Tabelas.sql`**: Script de Definição da Estrutura.
* **`2_DML_Insercao_Dados.sql`**: Script de População do Banco.
* **`3_DQL_Consultas.sql`**: Scripts de Relatórios e Análise de Dados.
* **`4_DML_Atualizacao_Delete.sql`**: Scripts de Manutenção e Gestão.
* **`README.md`**: Documentação do Projeto.

---

##  Detalhe dos Scripts

### 1. DDL – Criação das Tabelas (`1_DDL_Criacao_Tabelas.sql`)

Contém as instruções para a criação do esquema (`SCHEMA`) e todas as tabelas, seguindo o modelo lógico do sistema.

* **Definições:** Uso de `PRIMARY KEY`, `FOREIGN KEY`, e restrições de integridade, como **`UNIQUE`** para dados cadastrais essenciais (CPF, Email).
* **Tipos de Dados:** Compatíveis com **MySQL (InnoDB)**, incluindo o uso de **`ENUM`** para o status do pedido.
* **Entidades Modeladas:**
    * **Cliente**
    * **Categoria**
    * **Produto**
    * **Pedido**
    * **Pedido_Produto (Tabela Associativa)**
    * **Avaliação**

### 2. DML – Inserção de Dados (`2_DML_Insercao_Dados.sql`)

Popula o banco com dados fictícios coerentes com o contexto da padaria (clientes, pães, doces, pedidos, etc.).

* **Ordem de Inserção:** Rigorosamente ordenada para **respeitar as chaves estrangeiras (FKs)** e a integridade referencial.
* **População das Tabelas:** Cliente, Categoria, Produto, Pedido, Pedido\_Produto e Avaliação.

### 3. DQL – Consultas SQL (`3_DQL_Consultas.sql`)

Inclui um conjunto de consultas estratégicas para fins de relatórios e tomada de decisão.

* **Técnicas:** Utiliza `SELECT` com filtros (`WHERE`), `ORDER BY`, **`INNER JOIN`** (para conectar Cliente, Pedido e Produto), e funções de agregação (`SUM`, `COUNT`) com `GROUP BY`.
* **Relatórios Exemplo:**
    * Listagem de pedidos com detalhes de cliente e produtos.
    * Cálculo do **Total Gasto por Cliente**.
    * Identificação do **Produto Mais Vendido**.

### 4. DML – Atualização e Exclusão (`4_DML_Atualizacao_Delete.sql`)

Demonstra comandos de manutenção segura no banco de dados.

* **Atualização (`UPDATE`):** Exemplos de alteração de status de pedido (e.g., de 'Em Preparação' para 'Entregue') e ajuste de estoque.
* **Exclusão (`DELETE`):** Comandos seguros com condições (`WHERE`), priorizando a **exclusão de registros filhos** antes de tentar remover os registros pais (e.g., remover itens de pedido antes de remover o pedido em si).

---

##  Como Executar os Scripts

Os scripts são otimizados para **MySQL**, mas a sintaxe padrão SQL facilita o uso em outros SGBDs.

* **Ambientes Recomendados:** **MySQL Workbench** ou **DBeaver**.
* **Ordem de Execução:** É crucial seguir a ordem numérica para evitar erros de referência de tabela:
    1.  `1_DDL_Criacao_Tabelas.sql`
    2.  `2_DML_Insercao_Dados.sql`
    3.  `3_DQL_Consultas.sql`
    4.  `4_DML_Atualizacao_Delete.sql`

# Sistema de Gerenciamento de Biblioteca (SQL)

Este projeto é um sistema simples de gerenciamento de biblioteca utilizando SQL. Ele foi desenvolvido para praticar a criação de tabelas, inserção de dados e consultas em bancos de dados relacionais.

## 📂 Estrutura do Banco de Dados

O banco de dados possui as seguintes tabelas:

### **1. Livros**
- `id_livro` (PK, int, auto increment)  
- `titulo` (varchar, 150)  
- `autor` (varchar, 100)  
- `categoria` (varchar, 50)  
- `ano_publicacao` (int)  
- `disponibilidade` (boolean)

### **2. Membros**
- `id_membro` (PK, int, auto increment)  
- `nome` (varchar, 100)  
- `email` (varchar, 150, único)  
- `telefone` (varchar, 15)  
- `data_cadastro` (date)

### **3. Empréstimos**
- `id_emprestimo` (PK, int, auto increment)  
- `id_livro` (FK, int)  
- `id_membro` (FK, int)  
- `data_emprestimo` (date)  
- `data_devolucao` (date, opcional)

## 📜 Scripts Disponíveis

- **create_tables.sql**: Cria as tabelas no banco de dados.  
- **insert_data.sql**: Insere dados iniciais nas tabelas.  
- **queries.sql**: Contém consultas úteis para análise de dados.

## 🛠️ Consultas de Exemplo

1. **Livros mais emprestados:**  
   ```sql
   SELECT l.titulo, COUNT(e.id_emprestimo) AS total_emprestimos
   FROM Livros l
   JOIN Emprestimos e ON l.id_livro = e.id_livro
   GROUP BY l.titulo
   ORDER BY total_emprestimos DESC;

2. **Membros com mais empréstimos:**

   ```sql
   SELECT m.nome, COUNT(e.id_emprestimo) AS total_emprestimos
   FROM Membros m
   JOIN Emprestimos e ON m.id_membro = e.id_membro
   GROUP BY m.nome
   ORDER BY total_emprestimos DESC;

3. **Livros disponíveis na biblioteca:**

   ```sql
   SELECT * FROM Livros WHERE disponibilidade = 1; 

4. **Livros emprestados atualmente:**

   ```sql
   SELECT l.titulo, m.nome, e.data_emprestimo
   FROM Emprestimos e
   JOIN Livros l ON e.id_livro = l.id_livro
   JOIN Membros m ON e.id_membro = m.id_membro
   WHERE e.data_devolucao IS NULL; 

## 🚀 Como Usar

1.  Crie o banco de dados no seu sistema de gerenciamento de banco de dados (MySQL, PostgreSQL, etc.).

2. Execute o script `create_tables.sql` para criar as tabelas.

3. Execute o script `insert_data.sql` para adicionar dados iniciais.

4. Use as consultas em `queries.sql` para explorar os dados.

## 📚 Sobre o Projeto

Este projeto é ideal para quem está aprendendo SQL e deseja praticar suas habilidades.
Sinta-se à vontade para sugerir melhorias ou contribuir com novos recursos!

## linguagem Utilizada ##

<a href="https://programartudo.blogspot.com/2024/11/sql-manipulacao-e-gerenciamento-de-dados.html" target="_blank"><img loading="lazy" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlite/sqlite-original.svg" width="70" height="70"/></a>

## Apoie-me:

<a href="https://buymeacoffee.com/antonio13" target="_blank"><img loading="lazy" src="https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=&slug=seu_nome_de_usuario&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" width="130" height="30"></a>

<a href="https://www.paypal.com/donate/?hosted_button_id=DN574F28FYUNG" target="_blank"><img loading="lazy" src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" width="130" height="30"></a>

<a href="https://github.com/sponsors/Ninja1375" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-Sponsor-ea4aaa?style=for-the-badge&logo=github&logoColor=white" width="130" height="30"></a>

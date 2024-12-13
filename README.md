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

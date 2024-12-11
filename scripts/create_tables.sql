
-- Tabela de Livros
CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    ano_publicacao INT,
    disponibilidade BOOLEAN DEFAULT TRUE
);

-- Tabela de Membros
CREATE TABLE Membros (
    id_membro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

-- Tabela de Empréstimos
CREATE TABLE Emprestimos (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT,
    id_membro INT,
    data_emprestimo DATE DEFAULT CURRENT_DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_membro) REFERENCES Membros(id_membro)
);

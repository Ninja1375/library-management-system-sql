
-- Inserindo dados na tabela Livros
INSERT INTO Livros (titulo, autor, categoria, ano_publicacao, disponibilidade) VALUES
('1984', 'George Orwell', 'Ficção', 1949, TRUE),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Fantasia', 1954, TRUE),
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899, TRUE),
('Clean Code', 'Robert C. Martin', 'Tecnologia', 2008, TRUE);

-- Inserindo dados na tabela Membros
INSERT INTO Membros (nome, email, telefone) VALUES
('Ana Silva', 'ana.silva@example.com', '123456789'),
('Carlos Oliveira', 'carlos.oliveira@example.com', '987654321'),
('Maria Santos', 'maria.santos@example.com', '555555555');

-- Inserindo dados na tabela Emprestimos
INSERT INTO Emprestimos (id_livro, id_membro, data_emprestimo) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-05'),
(3, 3, '2024-12-07');

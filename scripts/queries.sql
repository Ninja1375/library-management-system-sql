
-- Livros mais emprestados
SELECT l.titulo, COUNT(e.id_emprestimo) AS total_emprestimos
FROM Livros l
JOIN Emprestimos e ON l.id_livro = e.id_livro
GROUP BY l.titulo
ORDER BY total_emprestimos DESC;

-- Membros com mais empréstimos
SELECT m.nome, COUNT(e.id_emprestimo) AS total_emprestimos
FROM Membros m
JOIN Emprestimos e ON m.id_membro = e.id_membro
GROUP BY m.nome
ORDER BY total_emprestimos DESC;

-- Livros disponíveis na biblioteca
SELECT * FROM Livros WHERE disponibilidade = 1;

-- Livros emprestados atualmente
SELECT l.titulo, m.nome, e.data_emprestimo
FROM Emprestimos e
JOIN Livros l ON e.id_livro = l.id_livro
JOIN Membros m ON e.id_membro = m.id_membro
WHERE e.data_devolucao IS NULL;

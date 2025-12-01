
SELECT * FROM usuario ORDER BY nome;

SELECT u.nome AS usuario, l.titulo AS livro, e.data_emprestimo
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN livro l ON e.id_livro = l.id_livro;

SELECT l.titulo, c.nome_categoria
FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Tecnologia';

SELECT u.nome, l.titulo, e.data_prevista, d.data_devolucao
FROM emprestimo e
JOIN devolucao d ON e.id_emprestimo = d.id_emprestimo
JOIN usuario u ON u.id_usuario = e.id_usuario
JOIN livro l ON l.id_livro = e.id_livro
WHERE d.data_devolucao > e.data_prevista;

SELECT * FROM usuario LIMIT 2;

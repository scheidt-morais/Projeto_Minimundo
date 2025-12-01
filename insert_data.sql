-- INSERTS EM USUÁRIO
INSERT INTO usuario (nome, telefone, email, endereco) VALUES
('João Silva', '1199999-1111', 'joao@gmail.com', 'Rua A, 100'),
('Maria Souza', '1198888-2222', 'maria@gmail.com', 'Rua B, 200'),
('Carlos Lima', '1197777-3333', 'carlos@gmail.com', 'Rua C, 300');

INSERT INTO categoria (nome_categoria) VALUES
('Romance'),
('Ficção Científica'),
('Tecnologia');

INSERT INTO livro (titulo, autor, ano, editora, id_categoria) VALUES
('Dom Casmurro', 'Machado de Assis', 1899, 'Editora ABC', 1),
('Fundação', 'Isaac Asimov', 1951, 'Editora SciFi', 2),
('Banco de Dados Moderno', 'Silva & Pereira', 2020, 'TechBooks', 3);

INSERT INTO emprestimo (data_emprestimo, data_prevista, id_usuario, id_livro) VALUES
('2025-02-01', '2025-02-15', 1, 1),
('2025-02-02', '2025-02-16', 2, 2),
('2025-02-03', '2025-02-17', 3, 3);

INSERT INTO devolucao (data_devolucao, id_emprestimo) VALUES
('2025-02-10', 1),
('2025-02-18', 2);

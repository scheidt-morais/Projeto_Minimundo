
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120) UNIQUE,
    endereco VARCHAR(200)
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(80) NOT NULL
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(120),
    ano INT,
    editora VARCHAR(100),
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE NOT NULL,
    data_prevista DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE devolucao (
    id_devolucao INT PRIMARY KEY AUTO_INCREMENT,
    data_devolucao DATE NOT NULL,
    id_emprestimo INT NOT NULL UNIQUE,
    FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);

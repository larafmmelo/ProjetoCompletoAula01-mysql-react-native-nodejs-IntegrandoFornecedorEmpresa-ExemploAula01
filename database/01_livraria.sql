DROP DATABASE IF EXISTS livraria_db;

CREATE DATABASE livraria_db;

USE livraria_db;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_livro INT NOT NULL,
    data_pedido DATE NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id)
        ON DELETE CASCADE,

    FOREIGN KEY (id_livro)
        REFERENCES livro(id)
        ON DELETE CASCADE
);

INSERT INTO cliente (nome, email, data_cadastro) VALUES
('João Silva', 'joao@email.com', '2026-01-10'),
('Maria Souza', 'maria@email.com', '2026-02-15'),
('Carlos Oliveira', 'carlos@email.com', '2026-03-20');

INSERT INTO livro (titulo, autor, preco, estoque) VALUES
('Dom Casmurro', 'Machado de Assis', 39.90, 10),
('O Cortiço', 'Aluísio Azevedo', 34.90, 8),
('1984', 'George Orwell', 49.90, 15);

INSERT INTO pedido (id_cliente, id_livro, data_pedido, quantidade) VALUES
(1, 1, '2026-04-01', 2),
(2, 2, '2026-04-05', 1),
(3, 3, '2026-04-10', 3);
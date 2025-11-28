
CREATE DATABASE IF NOT EXISTS Sistema_de_Padaria_Online_Doce_Sonho;
USE Sistema_de_Padaria_Online_Doce_Sonho;

-----TABELA CLIENTE

CREATE TABLE Cliente(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    cpf VARCHAR(14) NOT NULL UNIQUE
);

-----TABELA CATEGORIA
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-----TABELA PRODUTO
CREATE TABLE Produto(
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL, 
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY(id_categoria) REFERENCES Categoria(id_categoria)
);

-----TABELA PEDIDO

CREATE TABLE Pedido(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME NOT NULL, -- Alterado para DATETIME para registrar hora
    valor DECIMAL(10,2) NOT NULL,
    status ENUM('Pendente', 'Em Preparacao', 'Enviado', 'Entregue', 'Cancelado') NOT NULL, 
    id_cliente INT,
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente)
);

 -----TABELA PEDIDO_PRODUTO

CREATE TABLE Pedido_Produto(
    quantidade INT NOT NULL,
    id_produto INT NOT NULL,
    id_pedido INT NOT NULL,
    PRIMARY KEY(id_pedido, id_produto), 
    FOREIGN KEY(id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY(id_pedido) REFERENCES Pedido(id_pedido)
);

-----TABELA AVALIACAO

CREATE TABLE Avaliacao(
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    comentario VARCHAR(200),
    classificacao INT,
    id_cliente INT,
    id_produto INT,
    UNIQUE (id_cliente, id_produto), 
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY(id_produto) REFERENCES Produto(id_produto)
);

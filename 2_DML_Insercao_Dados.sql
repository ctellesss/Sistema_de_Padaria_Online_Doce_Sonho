

----- INSERT CLIENTE

INSERT INTO Cliente (nome, email, telefone, cpf) VALUES
('Cesar Telles', 'cesartelles@gmail.com', '11992334459', '11122233344'),
('Gabriel David', 'gabrieldavid@gmail.com', '11992536645', '55566677788'),
('Luciene Maria', 'lucienemaria@gmail.com', '11993345049', '99988877766');


----- INSERT CATEGORIA

INSERT INTO Categoria (nome) VALUES
('Pães'),
('Doces'),
('Salgados');


----- INSERT PRODUTOS

INSERT INTO Produto (nome, descricao, preco, quantidade, id_categoria) VALUES
('Pão Francês', 'Unidade de pão francês tradicional.', 1.50, 100, 1),
('Sonho', 'Doce de padaria com recheio de creme.', 4.00, 50, 2),
('Coxinha', 'Salgado frito com recheio de frango e catupiry.', 2.50, 75, 3);


----- INSERT PEDIDO

INSERT INTO Pedido (data, valor, status, id_cliente) VALUES
('2024-11-01', 15.00, 'Entregue', 1),        -- 10 Pães @ 1.50 = 15.00
('2024-11-26', 20.00, 'Em Preparacao', 2),  -- 5 Sonhos @ 4.00 = 20.00
('2024-11-12', 25.00, 'Entregue', 3);       -- 10 Coxinhas @ 2.50 = 25.00


----- INSERT PEDIDO_PRODUTO

INSERT INTO Pedido_Produto (quantidade, id_produto, id_pedido) VALUES
(10, 1, 1), -- Pedido 1 (Cesar) comprou 10 Pães (id 1)
(5, 2, 2),  -- Pedido 2 (Gabriel) comprou 5 Sonhos (id 2)
(10, 3, 3); -- Pedido 3 (Luciene) comprou 10 Coxinhas (id 3)


----- INSERT AVALIACAO

INSERT INTO Avaliacao (comentario, classificacao, id_cliente, id_produto) VALUES
('Muito bom!', 5, 1, 1),
('Doce demais', 3, 2, 2),
('Muito gorduroso', 2, 3, 3);

----- Atualizar Status de um Pedido

UPDATE Pedido
SET status = 'Entregue'
WHERE id_pedido = 2;

----- Atualizar Quantidade de um Produto

UPDATE Produto
SET quantidade = 20
WHERE id_produto = 1;


----- Atualizar Avaliação

UPDATE Avaliacao
SET comentario = 'Gostei mais agora depois da melhoria.'
WHERE id_avaliacao = 1;


----- Remover Produtos de Categorias que Não Existem

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Produto
WHERE id_categoria NOT IN (1, 2, 3);

SET SQL_SAFE_UPDATES = 1;


----- Remover Pedidos Antigos

SET SQL_SAFE_UPDATES = 0;

-- Remover itens associados na tabela Pedido_Produto

DELETE FROM Pedido_Produto
WHERE id_pedido IN (
    SELECT id_pedido 
    FROM Pedido 
    WHERE status = 'Entregue' AND data < '2024-11-10'
);

-- Remover os pedidos antigos

DELETE FROM Pedido
WHERE status = 'Entregue' AND data < '2024-11-10';

SET SQL_SAFE_UPDATES = 1;

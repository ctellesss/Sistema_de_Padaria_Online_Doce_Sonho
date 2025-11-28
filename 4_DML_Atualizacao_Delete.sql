
Atualizar Status de um Pedido

UPDATE Pedido
SET status = 'Entregue'
WHERE id_pedido = 2;

Atualizar Quantidade de um Produto

UPDATE Produto
SET quantidade = 20
WHERE id_produto = 1;


Atualizar Avaliaçã

UPDATE Avaliacao
SET comentario = 'Gostei mais agora depois da melhoria.'
WHERE id_avaliacao = 1;


Remover Produtos de Categorias que Não Existem

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Produto
WHERE id_categoria NOT IN (1, 2, 3);

SET SQL_SAFE_UPDATES = 1;


Remover Pedidos Antigos

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Pedido
WHERE status = 'Entregue' AND data < '2024-11-10'; -- Alterado 'Finalizado' para 'Entregue'

SET SQL_SAFE_UPDATES = 1;
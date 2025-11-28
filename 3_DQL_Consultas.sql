-----Listar Pedidos com Cliente e Produtos

SELECT 
    c.nome AS cliente,
    p.id_pedido,
    pr.nome AS produto, -- CORRIGIDO: Usando 'nome' do Produto
    pp.quantidade,
    p.valor,
    p.data,
    p.status
FROM Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
JOIN Pedido_Produto pp ON p.id_pedido = pp.id_pedido
JOIN Produto pr ON pr.id_produto = pp.id_produto
ORDER BY c.nome ASC, p.data DESC;


-----Total Gasto por Cada Cliente

SELECT 
    c.nome AS cliente,
    SUM(p.valor) AS total_gasto
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome -- Adicionado c.nome no GROUP BY (boa prática)
ORDER BY total_gasto DESC;


-----Produto Mais Vendido

SELECT 
    pr.nome AS produto, -- CORRIGIDO: Usando 'nome' do Produto
    SUM(pp.quantidade) AS total_vendido
FROM Produto pr
JOIN Pedido_Produto pp ON pr.id_produto = pp.id_produto
GROUP BY pr.id_produto, pr.nome
ORDER BY total_vendido DESC;
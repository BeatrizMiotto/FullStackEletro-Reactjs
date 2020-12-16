SELECT * FROM relatorio_pedidos;
SELECT * FROM pedidos;
SELECT * FROM produtos;

SELECT * FROM pedidos 
JOIN relatorio_pedidos ON pedidos.email = relatorio_pedidos.email;

SELECT sum(precototal) from pedidos;

SELECT * from relatorio_pedidos
right join produtos on produtos.preco= relatorio_pedidos.idrelatorio_pedidos;

SELECT * from relatorio_pedidos
left join pedidos on pedidos.nome_cliente= relatorio_pedidos.email;




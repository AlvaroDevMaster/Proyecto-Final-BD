--Mostrar el numero de productos por cada categoria
SELECT c.nombre AS categoria, COUNT(p.id_producto) AS numero_productos
FROM categorias c
JOIN Productos p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre;

--Encontrar el total de ingresos por proveedor, ordenados de mayor a menor
SELECT pr.nombre AS proveedor, SUM(dp.cantidad * dp.precio) AS total_ingresos
FROM Proveedores pr
JOIN Productos p ON pr.id_proveedor = p.id_proveedor
JOIN Detalles_Pedidos dp ON p.id_producto = dp.id_producto
GROUP BY pr.nombre
ORDER BY total_ingresos DESC;

--Listar los clientes que han realizado pedidos con un valor mayor a 1000
SELECT cl.nombre AS cliente, SUM(dp.cantidad * dp.precio) AS total_gastado
FROM Clientes cl
JOIN Pedidos pd ON cl.id_cliente = pd.id_cliente
JOIN Detalles_Pedidos dp ON pd.id_pedido = dp.id_pedido
GROUP BY cl.nombre
HAVING total_gastado > 1000;


--Mostrar los productos mas vendidos junto con su categoria
SELECT p.nombre AS producto, c.nombre AS categoria, SUM(dp.cantidad) AS total_vendido
FROM Productos p
JOIN categorias c ON p.id_categoria = c.id_categoria
JOIN Detalles_Pedidos dp ON p.id_producto = dp.id_producto
GROUP BY p.nombre, c.nombre
ORDER BY total_vendido DESC;


--Encontrar los comentarios de los pedidos realizados en el último mes
SELECT co.texto AS comentario, pd.fecha AS fecha_pedido, cl.nombre AS cliente
FROM Comentarios co
JOIN Pedidos pd ON co.id_pedido = pd.id_pedido
JOIN Clientes cl ON pd.id_cliente = cl.id_cliente
WHERE pd.fecha >= DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH);

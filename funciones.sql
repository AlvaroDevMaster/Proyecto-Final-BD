CREATE FUNCTION ObtenerStock(id_producto INT) 
RETURNS INT
BEGIN
    DECLARE stock_actual INT;
    SELECT stock INTO stock_actual
    FROM Productos
    WHERE id_producto = id_producto;
    RETURN stock_actual;
END;

CREATE FUNCTION CalcularTotalPedido(id_pedido INT) 
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(precio * cantidad) INTO total
    FROM Detalles_Pedidos
    WHERE id_pedido = id_pedido;
    RETURN total;
END;

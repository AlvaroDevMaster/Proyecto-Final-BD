DELIMITER //
CREATE PROCEDURE RegistrarCliente(
    IN p_nombre VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_direccion TEXT
)
BEGIN
    INSERT INTO Clientes (nombre, email, direccion)
    VALUES (p_nombre, p_email, p_direccion);
END //


CREATE PROCEDURE EliminarProducto(
    IN p_id_producto INT
)
BEGIN
    -- Eliminar detalles de pedidos asociados con el producto
    DELETE FROM Detalles_Pedidos
    WHERE id_producto = p_id_producto;
    
    -- Eliminar el producto
    DELETE FROM Productos
    WHERE id_producto = p_id_producto;
END //
CREATE PROCEDURE VerificarYActualizarStock(
    IN p_id_producto INT,
    IN p_umbral INT,
    IN p_nuevo_stock INT
)
BEGIN
    DECLARE stock_actual INT;
    -- Utilizar la función ObtenerStock para obtener el stock actual del producto
    SET stock_actual = ObtenerStock(p_id_producto);
    -- Verificar si el stock actual es menor que el umbral
    IF stock_actual < p_umbral THEN
        -- Actualizar el stock a un nuevo valor
        UPDATE Productos
        SET stock = p_nuevo_stock
        WHERE id_producto = p_id_producto;
    END IF;
END //

DELIMITER ;


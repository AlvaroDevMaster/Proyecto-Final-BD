-- Creamos esta tabla para registrar los cambios en stock
CREATE TABLE Historial_Stock (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    stock_anterior INT,
    stock_nuevo INT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

DELIMITER //
CREATE TRIGGER ActualizarHistorialStock
BEFORE UPDATE ON Productos
FOR EACH ROW
BEGIN
    -- Solo registrar cambios si el stock realmente cambia
    IF OLD.stock != NEW.stock THEN
        INSERT INTO Historial_Stock (id_producto, stock_anterior, stock_nuevo)
        VALUES (OLD.id_producto, OLD.stock, NEW.stock);
    END IF;
END //


CREATE TRIGGER actualiza_stock AFTER INSERT ON Detalles_Pedidos
FOR EACH ROW
BEGIN
    UPDATE Productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END //

DELIMITER ;

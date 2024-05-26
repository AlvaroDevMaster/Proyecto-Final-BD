CREATE VIEW VistaNumeroProductosPorCategoria AS
SELECT c.nombre AS categoria, COUNT(p.id_producto) AS numero_productos
FROM categorias c
JOIN Productos p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre;

CREATE VIEW VistaTotalIngresosPorProveedor AS
SELECT pr.nombre AS proveedor, SUM(dp.cantidad * dp.precio) AS total_ingresos
FROM Proveedores pr
JOIN Productos p ON pr.id_proveedor = p.id_proveedor
JOIN Detalles_Pedidos dp ON p.id_producto = dp.id_producto
GROUP BY pr.nombre
ORDER BY total_ingresos DESC;

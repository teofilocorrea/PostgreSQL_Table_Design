INSERT INTO stg.productos (nombre, descripcion, precio, stock, activo, categoria_id, proveedor_id, created_at)
VALUES
    ('iPhone 15', 'Smartphone Apple 128GB', 899.99, 50, TRUE, 1, 1, now()),
    ('Samsung Galaxy S24', 'Smartphone Samsung 256GB', 799.99, 30, TRUE, 1, 1, now()),
    ('Camisa Polo', 'Camisa polo de algodón talla M', 29.99, 100, TRUE, 2, 2, now()),
    ('Zapatillas Running', 'Zapatillas para correr talla 42', 89.99, 75, TRUE, 4, 4, now()),
    ('Pelota de Fútbol', 'Pelota oficial tamaño 5', 34.99, 60, TRUE, 4, 4, now()),
    ('Sofá 3 puestos', 'Sofá de tela color gris', 499.99, 10, TRUE, 3, 3, now()),
    ('Lámpara de escritorio', 'Lámpara LED regulable', 45.99, 40, TRUE, 3, 3, now()),
    ('Audífonos Bluetooth', 'Audífonos inalámbricos con cancelación de ruido', 149.99, 25, TRUE, 1, 1, now()),
    ('Muñeca Barbie', 'Muñeca Barbie edición especial', 24.99, 80, FALSE, 5, 5, now()),
    ('Camiseta Deportiva', 'Camiseta dry-fit talla L', 19.99, 120, TRUE, 2, 2, now());
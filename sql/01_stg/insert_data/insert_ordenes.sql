INSERT INTO stg.ordenes (cliente_id, empleado_id, fecha_orden, estado, total, created_at)
    VALUES
        (1, 1, '2024-01-05', 'entregado', 899.99,  now()),
        (2,2, '2024-01-10', 'entregado', 149.99,  now()),
        (3, 2, '2014-01-15', 'entregado', 119.98,  now()),
        (4, 3, '2024-02-01', 'enviado', 499.99,  now()),
        (5, 1, '2024-02-10', 'pendiente', 89.99,  now()),
        (6, 4, '2024-02-15', 'entregado', 75.95,  now()),
        (7, 2, '2024-03-01', 'enviado', 799.99,  now()),
        (8, 3, '2024-03-10', 'pendiente', 54.98,  now()),
        (9, 1, '2024-03-20', 'entregado', 45.99,  now()),
        (10, 4, '2024-04-01', 'enviado', 929.98,  now());
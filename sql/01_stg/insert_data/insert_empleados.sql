INSERT INTO stg.empleados (nombre, email, cargo, fecha_ingreso, activo, created_at)
    VALUES
        ('Carlos Méndez', 'carlos@tienda.com', 'Gerente de Ventas', '2020-01-15', TRUE, now()),
        ('Laura Jiménez', 'laura@tienda.com', 'Vendedor', '2021-03-10', TRUE, now()),
        ('Roberto Díaz', 'roberto@tienda.com', 'Vendedor', '2021-06-20', TRUE, now()),
        ('Sofia Castillo', 'sofia@tienda.com', 'Supervisor', '2019-08-02', TRUE, now()),
        ('Miguel Torres', 'miguel@tienda.com', 'Vendedor', '2022-11-01', FALSE, now());
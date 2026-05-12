INSERT INTO stg.clientes (nombre, email, telefono, ciudad, pais, fecha_registro, activo, created_at)
    VALUES
        ('Ana García', 'ana@gmail.com', 8091112233, 'Santo Domingo', 'República Dominicana', '2023-01-10', TRUE, now()),
        ('Luis Martinez', 'luis@gmail.com', 8092223344, 'Santiago', 'República Dominicana', '2023-02-15', TRUE, now()),
        ('Carmen Lopez', 'carmen@gmail.com', 8093334455, 'Miami', 'Estados Unidos', '2023-04-05', TRUE, now()),
        ('José Rodríguez', 'jose@gmail.com', 8094445566, 'Santiago', 'República Dominicana', '2023-04-05', TRUE, now()),
        ('María Fernández', 'maria@gmail.com', 8095556677, 'Santo Domingo', 'República Dominicana', '2023-05-12', TRUE, now()),
        ('Pedro Álvarez', 'Álvarezpedro@gmail.com', 8096667788, 'New York', 'Estados Unidos', '2023-07-18', FALSE, now()),
        ('Isabella Cruz', 'isabella@gmail.com', 8097778899, 'Santo Domingo', 'República Dominicana', '2023-07-22', TRUE, now()),
        ('Diego Morales', 'diego@gmail.com', 8098889900, 'La Vega', 'República Dominicana', '2023-08-30', TRUE, now()),
        ('Valentina Reyes', 'valentina@gmail.com', 8099990011, 'Santiago', 'República Dominicana', '2023-09-14', TRUE, now()),
        ('Andrés Vargas', 'andres@gmail.com', 8091231234, 'Santo Domingo', 'República Dominicana', '2023-10-25', TRUE, now());
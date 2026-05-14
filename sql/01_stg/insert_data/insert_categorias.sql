INSERT INTO stg.categorias (nombre, descripcion, activo, created_at)
VALUES
  ('Electrónica', 'Dispositivos y accesorios tecnológicos', TRUE,  NOW()),
    ('Ropa',        'Prendas de vestir para hombre y mujer',  TRUE,  NOW()),
    ('Hogar',       'Artículos para el hogar y decoración',   TRUE,  NOW()),
    ('Deportes',    'Equipos y ropa deportiva',               TRUE,  NOW()),
    ('Juguetes',    'Juguetes y juegos para niños',           FALSE, NOW());
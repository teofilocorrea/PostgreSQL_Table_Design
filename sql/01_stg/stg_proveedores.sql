CREATE TABLE IF NOT EXISTS stg.proveedores (

    id          SERIAL          PRIMARY KEY,
    nombre      VARCHAR(100)    NOT NULL,
    contacto    VARCHAR(150),
    email       VARCHAR(150)    UNIQUE,
    telefono    VARCHAR(15),
    pais        VARCHAR(100),
    activo      BOOLEAN         NOT NULL,
    created_at  TIMESTAMP       NOT NULL
);
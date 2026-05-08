-- ============================================================
-- Tabla: stg.proveedores
-- Descripción: Almacena la información básica de los proveedores
-- --              de la empresa. Cada registro representa
-- --              proveedores adquirido.
-- Autor: Teofilo Correa Rojas
-- Fecha: 8 de mayo 2026
-- ============================================================

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
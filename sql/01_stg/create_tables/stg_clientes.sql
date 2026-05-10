-- ============================================================
-- Tabla: stg.clientes
-- Descripción: Almacena la información básica de los clientes
-- --              de la empresa. Cada registro representa un
-- --              cliente.
-- Autor: Teofilo Correa Rojas
-- Fecha: 8 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.clientes (

    id              SERIAL              PRIMARY KEY,
    nombre          VARCHAR(250)        NOT NULL,
    email           VARCHAR(100)        NOT NULL,
    telefono        VARCHAR(30),
    ciudad          VARCHAR(250),
    pais            VARCHAR(250),
    fecha_registro  DATE                NOT NULL,
    activo          BOOLEAN             NOT NULL,
    created_at      TIMESTAMP           NOT NULL
);
-- ============================================================
-- Tabla: stg.orden_detalle
-- Descripción: Almacena la información básica de los detalles de las ordenes
-- --              de la empresa. Cada registro representa un
-- --              detalle de la ordenes.
-- Autor: Teofilo Correa Rojas
-- Fecha: 8 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.orden_detalle (

    id                  SERIAL          PRIMARY KEY,
    orden_id            INT,
    producto_id         INT,
    cantidad            INT             NOT NULL,
    precio_unitario     NUMERIC(10,2)   NOT NULL,
    subtotal            NUMERIC(10,2)   NOT NULL,
    created_at          TIMESTAMP       NOT NULL
);
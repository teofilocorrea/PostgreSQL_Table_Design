-- ============================================================
-- Tabla: stg.productos
-- Descripción: Almacena la información básica de los productos
-- --              de la empresa. Cada registro representa un
-- --              producto adquirido.
-- Autor: Teofilo Correa Rojas
-- Fecha: 7 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.productos (

  id            SERIAL          PRIMARY KEY,
  nombre        VARCHAR(100)    NOT NULL,
  descripcion   TEXT,
  precio        NUMERIC(10,2)   NOT NULL,
  stock         INTEGER         NOT NULL,
  activo        BOOLEAN         NOT NULL,
  categoria_id  INTEGER,
  proveedor_id  INTEGER,
  created_at    TIMESTAMP       NOT NULL
);